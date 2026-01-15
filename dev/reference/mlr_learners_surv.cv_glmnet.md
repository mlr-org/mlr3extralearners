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
#> min 0.00357    44   2.792 0.1799       6
#> 1se 0.07683    11   2.947 0.1529       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  38  12      1          8        1   120
#>  [12,]  36   5      1          0        1   115
#>  [13,]  33   6      1          1        1   115
#>  [14,]  40  12      1          9        0   153
#>  [15,]  42   3      1          1        1   130
#>  [16,]  42   2      0        180        1   100
#>  [17,]  38   5      1          3        0   125
#>  [18,]  42   2      0          2        0   140
#>  [19,]  40   6      0        180        1   138
#>  [20,]  40  11      1         10        1   120
#>  [21,]  41   2      1          1        0   166
#>  [22,]  40   1      1          0        1   145
#>  [23,]  43   4      1          0        1   130
#>  [24,]  42   4      0        180        0   162
#>  [25,]  40   3      1          1        0   170
#>  [26,]  42  12      1         10        1   170
#>  [27,]  43   2      1          1        1   116
#>  [28,]  42   2      0        180        1   124
#>  [29,]  45   3      0        180        1   154
#>  [30,]  41  13      1          1        0   140
#>  [31,]  45   9      1          7        0   110
#>  [32,]  45   6      0        180        1   170
#>  [33,]  41   5      1          4        1   141
#>  [34,]  44   2      1          1        1   150
#>  [35,]  43   2      0        180        1   140
#>  [36,]  45   2      0        180        1   140
#>  [37,]  46  15      0        180        0   120
#>  [38,]  46   2      1          1        0   126
#>  [39,]  47   4      1          3        0   118
#>  [40,]  45   3      0        150        0   130
#>  [41,]  43  29      0        180        1   180
#>  [42,]  43  10      0        180        0   185
#>  [43,]  47   6      1          0        1   116
#>  [44,]  47   4      1          3        1   160
#>  [45,]  45   8      1          0        1   117
#>  [46,]  49   5      0         73        1   136
#>  [47,]  46   6      1          0        1   100
#>  [48,]  47   2      0        180        0   108
#>  [49,]  44   9      1          8        1   135
#>  [50,]  45   5      0        180        1   190
#>  [51,]  46   5      1          3        0   130
#>  [52,]  46   4      0        180        1   121
#>  [53,]  44   2      0        180        0   142
#>  [54,]  46  15      0        180        1   120
#>  [55,]  45   9      1          0        1   145
#>  [56,]  48   3      0        180        0   154
#>  [57,]  48  12      1         11        0   200
#>  [58,]  47   9      1          6        0   170
#>  [59,]  46   3      1          0        1   119
#>  [60,]  49   4      0        180        0   117
#>  [61,]  47  10      0         10        1   140
#>  [62,]  50   4      1          1        0   125
#>  [63,]  50   6      1          2        1   140
#>  [64,]  49   7      1          7        1   110
#>  [65,]  49   2      0          2        0   105
#>  [66,]  49  15      1         11        1   160
#>  [67,]  49  23      0        179        1   112
#>  [68,]  46   6      1          0        1   156
#>  [69,]  52   2      0        180        1   170
#>  [70,]  50   7      1          0        1    92
#>  [71,]  50   4      0          4        1   100
#>  [72,]  50   1      1          0        0   150
#>  [73,]  49   7      1          4        1    90
#>  [74,]  47   6      0        180        1   162
#>  [75,]  52   2      0        180        0   155
#>  [76,]  50   4      1          1        0   150
#>  [77,]  53   8      0         36        1   160
#>  [78,]  48  17      1         10        0   111
#>  [79,]  49   9      1          3        0   102
#>  [80,]  49  15      0        180        1   160
#>  [81,]  54  17      1         12        1   102
#>  [82,]  53   7      1          0        0   199
#>  [83,]  54   6      1          3        0   129
#>  [84,]  50  14      1         13        0   170
#>  [85,]  53   8      1          7        0   160
#>  [86,]  51  25      1          1        0   202
#>  [87,]  49   5      1          2        1   150
#>  [88,]  52  14      1          7        1   200
#>  [89,]  48   6      0        180        0   160
#>  [90,]  53   4      1          0        1   156
#>  [91,]  51  13      0         99        1   160
#>  [92,]  54  23      1         10        0   131
#>  [93,]  55   6      1          2        1   114
#>  [94,]  54   9      1          1        0   130
#>  [95,]  55   4      1          2        0   150
#>  [96,]  52   4      0        180        1   180
#>  [97,]  51  13      1         11        0   145
#>  [98,]  54   4      1          0        1   121
#>  [99,]  52   4      0        180        0   183
#> [100,]  55  28      1         13        1   160
#> [101,]  49   6      1          0        1   130
#> [102,]  50   7      1          1        0   156
#> [103,]  53   8      1          0        1   130
#> [104,]  50   7      1          0        1   127
#> [105,]  52   5      0        175        1   117
#> [106,]  55   1      0        180        0   127
#> [107,]  55   2      0          2        0   145
#> [108,]  54   7      1          0        1   100
#> [109,]  56   3      0        180        1   193
#> [110,]  56   2      0        180        0   132
#> [111,]  55   5      1          4        1   120
#> [112,]  53  18      1          9        1   150
#> [113,]  54   3      0        180        1   180
#> [114,]  55   6      0        180        0   170
#> [115,]  52  16      0         16        0   152
#> [116,]  53  10      1          9        0   172
#> [117,]  53   4      0        180        1   150
#> [118,]  55   6      1          5        1   138
#> [119,]  54  12      1          0        1   190
#> [120,]  54   3      0        180        0   128
#> [121,]  56   3      0          8        1   139
#> [122,]  55   1      0          2        0   130
#> [123,]  57   3      0          3        0   120
#> [124,]  54   7      1          2        0   129
#> [125,]  54   2      1          1        0   135
#> [126,]  52   9      1          3        0   170
#> [127,]  57   1      0          1        1   100
#> [128,]  56   4      1          0        1   140
#> [129,]  55  11      1          7        0   104
#> [130,]  52  15      1         14        0   130
#> [131,]  53   3      1          0        1   200
#> [132,]  57  10      0        180        1   170
#> [133,]  58   8      0          8        1   130
#> [134,]  54   5      0        180        1   108
#> [135,]  55   3      1          1        1   156
#> [136,]  57   0      0          0        1   150
#> [137,]  53  21      1         13        1   130
#> [138,]  59   3      1          1        0   172
#> [139,]  58   6      1          0        1    90
#> [140,]  53  15      1         10        1   130
#> [141,]  54  17      1          8        1   227
#> [142,]  55   9      1          2        1   147
#> [143,]  55  13      0        166        1   140
#> [144,]  56   5      0          5        1   150
#> [145,]  54  23      1          8        0   120
#> [146,]  57   4      1          2        1   185
#> [147,]  53   7      1          0        1   120
#> [148,]  57  11      1         10        1   129
#> [149,]  55   5      0          5        1   131
#> [150,]  56   4      0          4        0   164
#> [151,]  59  15      1         10        0   140
#> [152,]  58   1      1          1        1   200
#> [153,]  55   5      1          0        0   140
#> [154,]  55   2      0          2        0   106
#> [155,]  59   9      1          1        1   125
#> [156,]  60  11      1          9        0   106
#> [157,]  59   3      0        180        0   120
#> [158,]  58   4      1          0        1   160
#> [159,]  57   2      0          2        1   120
#> [160,]  60   5      1          1        0   138
#> [161,]  57   5      0        180        1   130
#> [162,]  58  11      1          9        1   124
#> [163,]  55   5      1          0        1   160
#> [164,]  57  10      1          9        0   103
#> [165,]  59   6      1          0        1   140
#> [166,]  59   5      0        180        1   155
#> [167,]  59   4      1          0        1   152
#> [168,]  58  26      1          0        1   189
#> [169,]  61   9      0          9        1   160
#> [170,]  58   4      1          3        0   120
#> [171,]  60   0      1          0        1    80
#> [172,]  59   2      1          1        0   140
#> [173,]  58   8      0        161        1   140
#> [174,]  61   4      1          3        0   151
#> [175,]  61   9      1          8        0   150
#> [176,]  61   3      1          2        1   102
#> [177,]  58   1      0          1        1   100
#> [178,]  57  13      1         10        0   110
#> [179,]  57   2      1          0        1   116
#> [180,]  58  10      0         10        1   150
#> [181,]  57   4      1          3        0   138
#> [182,]  61   3      0         17        0   143
#> [183,]  57   3      1          2        0   120
#> [184,]  58  19      1         13        1   140
#> [185,]  56  13      1          6        1   158
#> [186,]  56  18      1         11        1   165
#> [187,]  59   9      1          0        1    80
#> [188,]  55   4      1          3        1   160
#> [189,]  58  11      0        172        1   135
#> [190,]  60  12      1          0        1   114
#> [191,]  55   9      1          7        1   135
#> [192,]  56   8      1          8        0   120
#> [193,]  57   1      0          1        0   126
#> [194,]  59   5      1          2        0   182
#> [195,]  58   5      1          1        1   135
#> [196,]  59  10      0        180        0   160
#> [197,]  62  10      1          0        1   153
#> [198,]  62   7      1          2        1   180
#> [199,]  57   3      1          0        0   100
#> [200,]  61  18      0        170        0   140
#> [201,]  61  28      1          7        0   133
#> [202,]  58   8      1          3        1   150
#> [203,]  57   7      0        169        0   180
#> [204,]  61   6      0          6        0   134
#> [205,]  59  13      1          2        0   198
#> [206,]  57  12      1          9        1   120
#> [207,]  62   4      1          0        0   160
#> [208,]  58   3      1          0        1   146
#> [209,]  62   4      1          3        0   173
#> [210,]  63   6      0         28        1   120
#> [211,]  57  18      1          9        1    93
#> [212,]  58  11      1          9        0   179
#> [213,]  57   2      1          1        0   159
#> [214,]  62   1      1          0        1   172
#> [215,]  58   7      0        180        1   150
#> [216,]  63   3      1          1        0   180
#> [217,]  63   1      0        180        1   130
#> [218,]  61   7      0        180        0   135
#> [219,]  63   4      1          3        0   222
#> [220,]  62   3      0        180        1   105
#> [221,]  63   4      0        180        1   190
#> [222,]  63  15      1         10        1   126
#> [223,]  64   4      0        180        0   130
#> [224,]  63   4      1          1        0   155
#> [225,]  60  18      1         13        0   132
#> [226,]  61   9      1          9        1   150
#> [227,]  58   9      1          9        0   110
#> [228,]  59   1      0         22        1   162
#> [229,]  60   7      1          5        1   141
#> [230,]  60   7      0          7        0   140
#> [231,]  60   7      1          1        1    90
#> [232,]  65  13      0        180        1   100
#> [233,]  63   1      0          1        0   130
#> [234,]  62   6      0        180        0   170
#> [235,]  61  15      1         13        0   170
#> [236,]  59   4      0          4        0   149
#> [237,]  62   6      0          6        0   120
#> [238,]  63  12      1         10        0   200
#> [239,]  59  10      0        180        1   130
#> [240,]  60   8      0         17        1   130
#> [241,]  61   6      1          1        1   117
#> [242,]  64  12      1         11        0   160
#> [243,]  63   4      1          3        0   162
#> [244,]  66   3      1          1        0   127
#> [245,]  61  10      1          2        1   194
#> [246,]  63  12      1          9        0   114
#> [247,]  63   7      0        180        0   120
#> [248,]  66   5      1          0        1   110
#> [249,]  65  10      1          8        1   120
#> [250,]  64   0      0          0        1    90
#> [251,]  60   6      0        180        0   130
#> [252,]  61  12      1         11        0   154
#> [253,]  64   9      0        180        0   150
#> [254,]  63  16      1          7        1   110
#> [255,]  63  12      0         12        1   150
#> [256,]  65   6      0          9        0   112
#> [257,]  65   3      1          0        1    80
#> [258,]  63   5      1          4        0   170
#> [259,]  62  13      1         11        0   180
#> [260,]  67  11      0         11        1   100
#> [261,]  64   2      0          2        0   201
#> [262,]  66  16      1         11        1   169
#> [263,]  62   9      0        180        0   145
#> [264,]  61  15      1         10        0   130
#> [265,]  63   9      1          8        1   160
#> [266,]  63   3      1          2        0   120
#> [267,]  63   2      1          0        0   140
#> [268,]  64  19      1          8        1   160
#> [269,]  65   8      1          0        1   140
#> [270,]  68   5      1          4        1   150
#> [271,]  64  13      1         12        1   150
#> [272,]  64   6      1          0        1   125
#> [273,]  66   7      1          0        1   115
#> [274,]  64  14      1         13        1   150
#> [275,]  65   3      0          3        0   105
#> [276,]  64   0      0          0        1   148
#> [277,]  67   4      1          3        0   130
#> [278,]  66   3      1          0        1   135
#> [279,]  66   6      1          0        1   140
#> [280,]  65   2      1          1        1   170
#> [281,]  63   7      1          0        0   162
#> [282,]  67   8      1          1        1   130
#> [283,]  68   5      0          5        1    90
#> [284,]  63  10      0         16        1   160
#> [285,]  64   1      0          1        1   120
#> [286,]  65  18      1          3        0   120
#> [287,]  63   1      1          0        1   155
#> [288,]  68  11      0        180        0   160
#> [289,]  68  14      0         79        0   172
#> [290,]  65  15      1         12        1   150
#> [291,]  66  11      1          0        0   100
#> [292,]  65   4      1          2        1   145
#> [293,]  69  12      0         15        1   140
#> [294,]  66  15      1         13        1   160
#> [295,]  63   2      0        180        0   150
#> [296,]  65  11      1          6        0   130
#> [297,]  69  21      1         10        0   180
#> [298,]  63   8      0        180        1   120
#> [299,]  65   8      1          0        1    90
#> [300,]  66   3      0          3        1   138
#> [301,]  68  10      1         10        1   150
#> [302,]  65   1      1          0        0   133
#> [303,]  63   2      1          0        0    99
#> [304,]  65   6      0          6        0    80
#> [305,]  65  10      1          1        1   148
#> [306,]  66  19      1         12        1   150
#> [307,]  67  12      1         12        0   160
#> [308,]  69   6      0         99        1   140
#> [309,]  64   4      0        179        0   160
#> [310,]  66   4      0        180        1   130
#> [311,]  64  11      0         11        0   125
#> [312,]  64   4      0        180        1   140
#> [313,]  64   0      1          0        1   118
#> [314,]  66   7      1          5        1   131
#> [315,]  66   4      0        180        0   177
#> [316,]  68   4      1          0        1   160
#> [317,]  65  13      1         12        1   130
#> [318,]  69   8      0         93        0   140
#> [319,]  64  21      0         21        1   155
#> [320,]  68  18      1          0        1   160
#> [321,]  65   6      0        101        1   115
#> [322,]  71   3      0          5        0   112
#> [323,]  70   7      1          0        1   190
#> [324,]  67   2      0        180        0   128
#> [325,]  66   9      1          3        1   151
#> [326,]  70   4      1          0        1   180
#> [327,]  69   8      0        180        1   153
#> [328,]  70  14      0        171        0   166
#> [329,]  67  10      1          9        0   200
#> [330,]  67   6      1          4        0   130
#> [331,]  69   0      0          0        1   148
#> [332,]  68   7      1          0        1   150
#> [333,]  69   3      1          2        0   151
#> [334,]  67  14      1         13        0   130
#> [335,]  65  14      1         13        1   150
#> [336,]  69   8      0        180        1   180
#> [337,]  71   7      0          7        0   230
#> [338,]  66   2      0          2        1   228
#> [339,]  71   6      0         45        1   158
#> [340,]  69   5      0          5        1   142
#> [341,]  71   3      0        103        0   133
#> [342,]  70  22      1         13        0   103
#> [343,]  67   1      0         36        1   104
#> [344,]  67   5      0          5        0   130
#> [345,]  69   6      1          4        1   174
#> [346,]  72   3      1          0        1   132
#> [347,]  72   7      0          7        1   110
#> [348,]  69   8      1          7        1   108
#> [349,]  66   2      1          1        0   123
#> [350,]  69  19      0        180        0   130
#> [351,]  68  18      0         18        1   100
#> [352,]  66   2      0        180        0   130
#> [353,]  67   7      1          4        0   122
#> [354,]  68   2      0          7        1   130
#> [355,]  69   8      1          2        0   121
#> [356,]  67  13      1          9        0   130
#> [357,]  70   3      0        123        0   130
#> [358,]  70   9      0        180        1   142
#> [359,]  72   5      1          4        0   170
#> [360,]  68   3      0         19        0   135
#> [361,]  67  12      1          8        0   120
#> [362,]  67   1      0          1        1    60
#> [363,]  69   5      0         76        0   120
#> [364,]  67   8      1          0        1   130
#> [365,]  72  13      1         11        1   195
#> [366,]  68  10      1          8        1   160
#> [367,]  66  24      1         13        0   130
#> [368,]  72  30      1          0        1   145
#> [369,]  70   7      0          7        0   102
#> [370,]  71   6      0          9        0   120
#> [371,]  69  10      1          6        1   120
#> [372,]  70  11      0        180        1   210
#> [373,]  72  12      1         10        0   170
#> [374,]  67   8      0        180        1   170
#> [375,]  67   5      1          0        1   147
#> [376,]  67   9      0        180        0   158
#> [377,]  70   5      0        180        0   150
#> [378,]  72   2      0          2        1   100
#> [379,]  67   4      1          1        0   134
#> [380,]  72   6      1          5        0   115
#> [381,]  68  23      0        180        1   220
#> [382,]  69   3      0        180        0   220
#> [383,]  68   4      1          3        0   210
#> [384,]  71   5      0        180        0   191
#> [385,]  73   6      0        180        1   117
#> [386,]  69  16      1         10        1   140
#> [387,]  69   8      1          1        0   164
#> [388,]  68   7      0        180        1   130
#> [389,]  72  16      1          1        1   130
#> [390,]  70   4      0        180        0   180
#> [391,]  69   1      1          0        0   155
#> [392,]  73   6      1          0        1   270
#> [393,]  71   2      1          0        1   180
#> [394,]  70   3      0          3        1   159
#> [395,]  70  13      1          9        0   100
#> [396,]  72   6      0        180        1   130
#> [397,]  73   0      0        180        1   161
#> [398,]  74   8      1          0        1    85
#> [399,]  69   2      1          0        1   110
#> [400,]  71  15      1         11        0   165
#> [401,]  71  20      1         10        0   140
#> [402,]  74   0      1          0        1    90
#> [403,]  70   5      1          0        1   190
#> [404,]  71  17      1         11        0   160
#> [405,]  71   8      1          7        0   149
#> [406,]  70  26      1         11        1   120
#> [407,]  74   4      0          4        0   120
#> [408,]  73   4      0         58        1   160
#> [409,]  72   5      1          3        1   160
#> [410,]  70   3      0        180        1   154
#> [411,]  73   6      0        180        0   110
#> [412,]  71   7      1          2        0   143
#> [413,]  74   3      0          3        1   150
#> [414,]  73  17      1         11        0   140
#> [415,]  71  13      1          8        0   121
#> [416,]  71  14      1         13        1   170
#> [417,]  74   7      1          0        1   117
#> [418,]  72  10      1          8        1   153
#> [419,]  71  10      1          9        1   120
#> [420,]  75   1      0          1        0   133
#> [421,]  75   2      1          1        0   145
#> [422,]  73  10      1         10        1   120
#> [423,]  73   1      0          1        1    80
#> [424,]  71  11      1          8        0   110
#> [425,]  72   1      1          1        0   168
#> [426,]  72   7      0         57        1   145
#> [427,]  73  10      0        180        0   162
#> [428,]  72  11      0         11        1   140
#> [429,]  76  25      1         12        1   170
#> [430,]  73  12      1         12        1   140
#> [431,]  72   4      1          0        1   197
#> [432,]  71   3      1          0        0   144
#> [433,]  73   5      0        180        0   126
#> [434,]  73   4      0        180        0   124
#> [435,]  71  32      1         12        1   107
#> [436,]  76   5      0          5        1   130
#> [437,]  77   4      0          4        0   185
#> [438,]  75   3      1          1        0   180
#> [439,]  72   7      1          2        0   142
#> [440,]  73  15      0         15        1   160
#> [441,]  71  16      0        180        0   140
#> [442,]  73  10      1         10        0   124
#> [443,]  74   7      0        180        1   150
#> [444,]  74   3      0          3        1   128
#> [445,]  74   2      1          1        0   140
#> [446,]  74  19      1          4        1   200
#> [447,]  73   6      0          6        1   114
#> [448,]  75  23      1         14        1   110
#> [449,]  74   2      0        180        0   190
#> [450,]  72   4      1          3        0   160
#> [451,]  73   4      1          3        1   125
#> [452,]  76  13      1         10        0   110
#> [453,]  75   4      1          0        1   122
#> [454,]  75   7      0          7        0   190
#> [455,]  75   0      0          0        1   130
#> [456,]  75  12      0         12        1   160
#> [457,]  75   4      1          2        1   188
#> [458,]  74   6      0        180        0   160
#> [459,]  76   4      0          4        1   155
#> [460,]  74   2      0        180        0   111
#> [461,]  73   0      0        180        0   156
#> [462,]  76  44      1         10        0   105
#> [463,]  76   5      0        180        0   185
#> [464,]  76   5      1          0        1   167
#> [465,]  74   8      1          8        1   170
#> [466,]  73  33      1         12        1   175
#> [467,]  77   5      1          0        0   123
#> [468,]  73  10      1          9        0   146
#> [469,]  77  12      0        180        0   130
#> [470,]  77   1      1          0        1    90
#> [471,]  76  12      1         11        1   120
#> [472,]  73   7      1          0        0   174
#> [473,]  75   3      1          1        1   171
#> [474,]  74   9      1          8        0   200
#> [475,]  79  10      1          8        0   190
#> [476,]  78  18      0         18        1   144
#> [477,]  77   3      0        180        0   110
#> [478,]  73   8      1          1        1   162
#> [479,]  73  11      1          2        1   110
#> [480,]  74   2      0        180        0   100
#> [481,]  78   7      0          7        1   133
#> [482,]  78   8      1          6        1   110
#> [483,]  74   7      0          7        0   161
#> [484,]  79   6      0        180        0   170
#> [485,]  80  10      1          6        1   147
#> [486,]  78   0      0        180        1   212
#> [487,]  78  13      1          5        0   130
#> [488,]  75   5      0        119        1   150
#> [489,]  75  12      1          1        1   120
#> [490,]  78  15      0        180        1   270
#> [491,]  80   8      0          8        1   120
#> [492,]  74  10      1          8        0   135
#> [493,]  78  12      1          9        0   150
#> [494,]  78   2      1          1        0   130
#> [495,]  78  10      0        180        1   130
#> [496,]  76  11      1          0        0   120
#> [497,]  75  11      1          4        0   162
#> [498,]  75   3      0          3        0     0
#> [499,]  76   7      0         29        1   150
#> [500,]  77  24      0         24        1   160
#> [501,]  79   8      0         32        1   120
#> [502,]  80   6      0          6        1   150
#> [503,]  78   6      1          0        1   240
#> [504,]  76   3      1          0        1   140
#> [505,]  78  11      1          1        1   140
#> [506,]  79  11      0        180        0   160
#> [507,]  79   2      1          0        1   121
#> [508,]  78  14      1          0        1   140
#> [509,]  78  11      1          8        1   118
#> [510,]  79   4      0          4        1   125
#> [511,]  77   6      0          6        1   107
#> [512,]  80   3      1          0        1   120
#> [513,]  75   2      1          1        1   204
#> [514,]  76   1      0          1        1   140
#> [515,]  77  31      1          3        1   161
#> [516,]  77   7      0        180        1   170
#> [517,]  77   6      0          6        1   144
#> [518,]  79   4      1          0        1   120
#> [519,]  81   1      0        180        0   120
#> [520,]  80  15      1         12        1   150
#> [521,]  82   5      0          8        1   120
#> [522,]  78   4      0         59        1   112
#> [523,]  80  17      1         12        0   100
#> [524,]  79  10      0         10        1   120
#> [525,]  80  15      1          0        1    90
#> [526,]  81   4      1          2        1   126
#> [527,]  79  28      0        164        0   100
#> [528,]  79   1      0         37        1   140
#> [529,]  81   3      0        180        0   184
#> [530,]  81   2      0        175        0   172
#> [531,]  80   5      1          1        1   108
#> [532,]  79   3      0          3        1   101
#> [533,]  81   4      1          1        1   104
#> [534,]  78  20      1          0        1   109
#> [535,]  82   3      1          1        1   144
#> [536,]  77   5      0         85        0   188
#> [537,]  79   6      0          6        0   152
#> [538,]  80   6      1          0        1   119
#> [539,]  78   2      0        180        0   148
#> [540,]  77   4      0        180        1    98
#> [541,]  81   1      0        108        0   129
#> [542,]  82  21      1          2        0   155
#> [543,]  84  22      1         10        0   180
#> [544,]  79   4      0          4        1   121
#> [545,]  80   6      0          6        1   110
#> [546,]  83   5      0        180        0   148
#> [547,]  83   4      0        103        0    97
#> [548,]  81  11      1          8        0   160
#> [549,]  81   5      0        177        0    41
#> [550,]  80  11      1          8        0   170
#> [551,]  79   4      0          4        1   183
#> [552,]  78   9      1          4        1   120
#> [553,]  82   8      1          1        0   128
#> [554,]  79   1      0        180        1   170
#> [555,]  81  20      1          9        0   170
#> [556,]  83   8      0          8        0   115
#> [557,]  81  16      0         16        1   110
#> [558,]  81   8      0        180        0   146
#> [559,]  80   8      1          7        0   160
#> [560,]  79   7      0        177        0   197
#> [561,]  79   0      1          0        1    96
#> [562,]  85   4      0        180        0    90
#> [563,]  81   2      1          1        0   198
#> [564,]  82   6      0        128        1   100
#> [565,]  84   4      0        167        0   198
#> [566,]  81   1      0          1        1   150
#> [567,]  83   3      0        180        0   174
#> [568,]  79   9      1          8        0   150
#> [569,]  80  13      1          8        1   140
#> [570,]  84   4      0         89        1   129
#> [571,]  79   4      0          4        1    60
#> [572,]  80   6      0         71        1   189
#> [573,]  83   1      0          1        1   100
#> [574,]  80  30      1         13        0   220
#> [575,]  79  14      1          0        0   110
#> [576,]  81  14      1         12        1   128
#> [577,]  83   2      0        154        0   130
#> [578,]  83   1      0        180        0   160
#> [579,]  81   4      0          4        0   175
#> [580,]  81   1      0          1        1   145
#> [581,]  81  12      0         12        1   163
#> [582,]  82  16      1          8        0   103
#> [583,]  82   5      1          0        1   146
#> [584,]  81   4      0          4        0   160
#> [585,]  86  12      0        180        1   120
#> [586,]  83  12      1          2        1   170
#> [587,]  81  19      1         14        0   120
#> [588,]  82  15      1          0        0   183
#> [589,]  80   2      0         88        0   135
#> [590,]  81  16      1          9        0   180
#> [591,]  84   6      0        165        0   145
#> [592,]  86   3      0          3        1   140
#> [593,]  82   9      0        180        1   134
#> [594,]  81  13      0        180        0   152
#> [595,]  85   3      0          3        1   118
#> [596,]  83   9      0        180        1   149
#> [597,]  82   1      0        180        1   193
#> [598,]  83   4      0          4        0   130
#> [599,]  86  12      1          0        1   132
#> [600,]  84  16      0         70        1   150
#> [601,]  83  19      0         43        0   150
#> [602,]  84   3      1          2        0   125
#> [603,]  83  10      1          0        1   190
#> [604,]  83  13      1         12        0   170
#> [605,]  84   7      1          2        0   148
#> [606,]  86   4      0         38        1   122
#> [607,]  86  13      0        177        0   163
#> [608,]  86   6      1          1        0   112
#> [609,]  88   4      0          4        0   100
#> [610,]  83  20      1          3        1   150
#> [611,]  88   4      0          4        1   115
#> [612,]  85  22      0         22        1   184
#> [613,]  86   9      1          7        1   142
#> [614,]  87   2      0        180        1   130
#> [615,]  86   6      0         46        0   173
#> [616,]  88   3      0        115        0   110
#> [617,]  88   2      0        180        1    68
#> [618,]  83   3      0          3        1   130
#> [619,]  87   8      0          8        1   157
#> [620,]  86  15      1          8        1   109
#> [621,]  88   4      0          4        0    86
#> [622,]  89   4      0          4        1   153
#> [623,]  89   5      0        119        1   140
#> [624,]  87   6      0        180        1   110
#> [625,]  87   1      0          1        0   170
#> [626,]  84   8      0        180        1   119
#> [627,]  85   8      0          8        1   136
#> [628,]  84   0      0        180        1   136
#> [629,]  89  10      0         46        1   170
#> [630,]  90  14      0         14        1   100
#> [631,]  88   1      0          1        0   135
#> [632,]  86   4      0        180        1   145
#> [633,]  87   2      0        180        0   160
#> [634,]  91  10      0        145        0   135
#> [635,]  86   3      1          0        1    80
#> [636,]  90  11      1         10        1   186
#> [637,]  87   6      0        126        1   168
#> [638,]  86  10      0        180        1   137
#> [639,]  90   4      1          0        0   121
#> [640,]  91   1      0          1        1    74
#> [641,]  87  43      0        178        1   130
#> [642,]  90   5      1          0        1   125
#> [643,]  88   3      1          2        0   159
#> [644,]  92   1      0          1        1   167
#> [645,]  88   5      0        158        0   100
#> [646,]  87   7      0         74        1   105
#> [647,]  89   2      0        168        0   118
#> [648,]  91   5      0        169        1   176
#> [649,]  89  52      0         52        1   130
#> [650,]  92   7      0          7        1   110
#> [651,]  89   4      0          4        1   159
#> [652,]  91   0      0          0        0     0
#> [653,]  90  18      0        180        0   188
#> [654,]  94   6      0         50        0    78
#> [655,]  90   1      0          1        1   118
#> [656,]  93   8      0        179        1   110
#> [657,]  94   8      0          8        1   142
#> [658,]  92   4      0         76        1   149
#> [659,]  91   1      0        180        0   158
#> [660,]  90  16      0         16        1   106
#> [661,]  90   3      0         67        0   162
#> [662,]  96   3      0         12        1    97
#> [663,]  95   8      1          5        1   150
#> [664,]  94   3      0         26        1   144
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+ 180.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+ 180.0+
#>  [11]  12.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0 
#>  [41] 180.0+ 180.0+   6.0+ 180.0+ 180.0+  73.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [51]   5.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61]  10.0+ 180.0+ 180.0+   7.0    2.0  179.0+ 179.0+ 180.0+ 180.0+ 180.0+
#>  [71]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0   88.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+ 166.0+
#>  [91]  99.0  152.0+   6.0+ 180.0+ 180.0+ 180.0+  13.0+ 180.0+ 180.0+  28.0 
#> [101]   6.0+ 180.0+ 180.0+ 180.0+ 175.0+ 180.0+   2.0    7.0+ 180.0+ 180.0+
#> [111] 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+ 180.0+  12.0+ 180.0+
#> [121]   8.0    2.0    3.0+ 180.0+ 180.0+ 180.0+   1.0  165.0  180.0+ 180.0+
#> [131] 180.0+ 180.0+   8.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+
#> [141] 171.0+  15.0  166.0+   5.0+ 180.0+   4.0+ 180.0+ 180.0+   5.0+   4.0+
#> [151] 180.0+   1.0  180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+   9.0+ 180.0+
#> [171]   0.5  180.0+ 161.0+ 180.0+ 180.0+   3.0    1.0  180.0+ 180.0+  10.0+
#> [181] 180.0+  17.0    3.0+  19.0  180.0+ 180.0+   9.0+ 180.0+ 172.0+ 172.0+
#> [191]  24.0    8.0    1.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 170.0 
#> [201]  94.0  180.0+ 169.0    6.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+  28.0 
#> [211]  18.0  180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+   9.0   22.0   84.0    7.0+
#> [231] 180.0+ 180.0+   1.0  180.0+ 180.0+   4.0+   6.0+ 180.0+ 180.0+  17.0 
#> [241] 180.0+  12.0  180.0+   3.0+  88.0   12.0  180.0+ 180.0+ 180.0+   0.5 
#> [251] 180.0+  12.0+ 180.0+ 180.0+  12.0    9.0    3.0  180.0+ 180.0+  11.0+
#> [261]   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0   15.0    5.0+
#> [271]  13.0  180.0+ 179.0+  14.0+   3.0    0.5+ 180.0+   3.0+ 180.0+ 175.0+
#> [281]   7.0+   8.0    5.0   16.0    1.0  123.0+   1.0+ 180.0+  79.0   15.0+
#> [291] 180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 174.0+ 180.0+   8.0+   3.0 
#> [301]  10.0  180.0+ 180.0+   6.0  180.0+  19.0+  12.0   99.0  179.0+ 180.0+
#> [311]  11.0+ 180.0+   0.5    7.0+ 180.0+ 180.0+ 180.0+  93.0   21.0+  18.0+
#> [321] 101.0    5.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0  174.0+   6.0 
#> [331]   0.5  180.0+ 180.0+ 180.0+  14.0+ 180.0+   7.0+   2.0   45.0    5.0+
#> [341] 103.0  180.0+  36.0    5.0+  97.0  180.0+   7.0    8.0+   2.0+ 180.0+
#> [351]  18.0  180.0+   7.0    7.0    8.0+  13.0+ 123.0  180.0+ 180.0+  19.0 
#> [361] 180.0+   1.0   76.0  180.0+ 132.0   10.0+ 180.0+ 162.0    7.0+   9.0 
#> [371] 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+   2.0   76.0  180.0+
#> [381] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+  16.0+ 180.0+
#> [391] 180.0+   6.0  180.0+   3.0+  13.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+
#> [401]  20.0    0.5  180.0+ 180.0+   8.0  180.0+   4.0+  58.0  180.0+ 180.0+
#> [411] 180.0+ 180.0+   3.0  180.0+ 175.0   14.0+ 180.0+  10.0+ 179.0+   1.0 
#> [421] 180.0+  15.0    1.0  180.0+   1.0   57.0  180.0+  11.0  180.0+  12.0 
#> [431] 180.0+ 180.0+ 180.0+ 180.0+ 177.0+   5.0    4.0+ 180.0+   7.0   15.0+
#> [441] 180.0+  10.0  180.0+   3.0  180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+
#> [451] 180.0+ 174.0+   4.0    7.0    0.5   12.0   46.0  180.0+   4.0  180.0+
#> [461] 180.0+ 180.0+ 180.0+ 180.0+   8.0   33.0    5.0  180.0+ 180.0+   1.0 
#> [471]  12.0    7.0+   3.0  168.0+ 180.0+  18.0  180.0+ 180.0+  11.0  180.0+
#> [481]   7.0    8.0+   7.0  180.0+  10.0  180.0+ 172.0  119.0   12.0  180.0+
#> [491]   8.0  180.0+ 180.0+ 180.0+ 180.0+  11.0  152.0+   3.0   29.0   24.0 
#> [501]  32.0    6.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+  11.0    4.0 
#> [511]   6.0    3.0+   2.0+   1.0  171.0  180.0+   6.0  138.0  180.0+ 180.0+
#> [521]   8.0   59.0   17.0   10.0+ 180.0+  93.0  164.0   37.0  180.0+ 175.0+
#> [531]   5.0+   3.0   71.0   20.0+ 180.0+  85.0    6.0+   6.0  180.0+ 180.0+
#> [541] 108.0  180.0+ 180.0+   4.0    6.0  180.0+ 103.0  180.0+ 177.0+ 169.0 
#> [551]   4.0  180.0+ 180.0+ 180.0+  20.0    8.0+  16.0  180.0+ 180.0+ 177.0+
#> [561]   0.5  180.0+ 180.0+ 128.0  167.0    1.0  180.0+ 180.0+ 180.0+  89.0 
#> [571]   4.0   71.0    1.0   30.0  180.0+ 180.0+ 154.0  180.0+   4.0+   1.0 
#> [581]  12.0   16.0+   5.0+   4.0+ 180.0+  77.0  180.0+  83.0   88.0  180.0+
#> [591] 165.0    3.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+   4.0+ 180.0+  70.0 
#> [601]  43.0  180.0+ 180.0+  13.0  180.0+  38.0  177.0    6.0+   4.0+  20.0 
#> [611]   4.0   22.0   11.0  180.0+  46.0  115.0  180.0+   3.0+   8.0+ 180.0+
#> [621]   4.0    4.0  119.0  180.0+   1.0+ 180.0+   8.0  180.0+  46.0   14.0 
#> [631]   1.0+ 180.0+ 180.0+ 145.0    3.0   11.0  126.0  180.0+   4.0    1.0 
#> [641] 178.0+  89.0   75.0    1.0  158.0   74.0  168.0  169.0   52.0    7.0 
#> [651]   4.0    0.5  180.0+  50.0    1.0+ 179.0+   8.0+  76.0  180.0+  16.0 
#> [661]  67.0   12.0    8.0   26.0   53.0    7.0+   0.5   69.0    2.0    3.0 
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
#>   0.8467134 
```
