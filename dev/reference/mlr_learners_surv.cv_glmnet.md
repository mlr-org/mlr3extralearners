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
#> min 0.00344    44   2.910 0.1548       6
#> 1se 0.07403    11   3.059 0.1472       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  35   5      1          2        0   172
#>   [3,]  35  10      1          9        0   106
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  38  12      1          8        1   120
#>  [11,]  33   6      1          1        1   115
#>  [12,]  38  16      1         10        0   160
#>  [13,]  38  12      1         11        1    92
#>  [14,]  40  12      1          9        0   153
#>  [15,]  42   3      1          1        1   130
#>  [16,]  37   1      1          0        1   146
#>  [17,]  40   2      1          1        1   148
#>  [18,]  38   5      1          3        0   125
#>  [19,]  42   2      0          2        0   140
#>  [20,]  40   6      0        180        1   138
#>  [21,]  40  11      1         10        1   120
#>  [22,]  42   2      0        180        0   100
#>  [23,]  41   2      1          1        0   166
#>  [24,]  40   1      1          0        1   145
#>  [25,]  40   3      1          1        0   170
#>  [26,]  42  12      1         10        1   170
#>  [27,]  43   2      1          1        1   116
#>  [28,]  42   2      0        180        1   124
#>  [29,]  44   5      1          1        0   170
#>  [30,]  45   3      0        180        1   154
#>  [31,]  41  10      1          8        0   150
#>  [32,]  44   3      0        180        0   141
#>  [33,]  41  13      1          1        0   140
#>  [34,]  41   5      1          4        1   141
#>  [35,]  43   2      0        180        1   140
#>  [36,]  45   2      0        180        1   140
#>  [37,]  46  15      0        180        0   120
#>  [38,]  46   2      1          1        0   126
#>  [39,]  47   4      1          3        0   118
#>  [40,]  48  15      0        180        1   160
#>  [41,]  46   7      1          2        0   166
#>  [42,]  43  29      0        180        1   180
#>  [43,]  45   4      1          0        0   124
#>  [44,]  47   6      1          0        1   116
#>  [45,]  45   8      1          0        1   117
#>  [46,]  49   5      0         73        1   136
#>  [47,]  45   5      0          5        0   141
#>  [48,]  46   2      1          1        1   122
#>  [49,]  44   9      1          8        1   135
#>  [50,]  45   5      0        180        1   190
#>  [51,]  44   2      0        180        0   142
#>  [52,]  45   9      1          0        1   145
#>  [53,]  48   3      0        180        0   154
#>  [54,]  48  12      1         11        0   200
#>  [55,]  47   5      1          3        1   130
#>  [56,]  46   3      1          0        1   119
#>  [57,]  47  10      0         10        1   140
#>  [58,]  48   2      1          0        0   184
#>  [59,]  47   7      0        180        0   145
#>  [60,]  50   6      1          2        1   140
#>  [61,]  49   7      1          7        1   110
#>  [62,]  46   9      1          9        1   122
#>  [63,]  50   7      0        180        1   110
#>  [64,]  51   1      0          1        1   145
#>  [65,]  49  15      1         11        1   160
#>  [66,]  47   2      0        180        0   150
#>  [67,]  49  23      0        179        1   112
#>  [68,]  52   2      0        180        1   170
#>  [69,]  50   4      0          4        1   100
#>  [70,]  51   3      1          2        0   113
#>  [71,]  50   1      1          0        0   150
#>  [72,]  50   9      0        180        0   130
#>  [73,]  49   7      1          4        1    90
#>  [74,]  47   8      0        180        0   160
#>  [75,]  47   6      0        180        1   162
#>  [76,]  51   8      0        180        1   140
#>  [77,]  52   2      0        180        0   155
#>  [78,]  46   1      1          1        0   145
#>  [79,]  53   8      0         36        1   160
#>  [80,]  48  17      1         10        0   111
#>  [81,]  52   4      1          4        0   152
#>  [82,]  49   9      1          3        0   102
#>  [83,]  53   5      0        180        1   140
#>  [84,]  54  17      1         12        1   102
#>  [85,]  51   3      1          1        0   140
#>  [86,]  50   2      0          5        1   106
#>  [87,]  50  10      1          6        0   122
#>  [88,]  50  14      1         13        0   170
#>  [89,]  53   8      1          7        0   160
#>  [90,]  48   3      1          2        0   150
#>  [91,]  51  25      1          1        0   202
#>  [92,]  49   5      1          2        1   150
#>  [93,]  53   4      0          4        0   140
#>  [94,]  52  14      1          7        1   200
#>  [95,]  48   6      0        180        0   160
#>  [96,]  48  11      1         10        0   120
#>  [97,]  53   4      1          0        1   156
#>  [98,]  51  13      0         99        1   160
#>  [99,]  49  16      0         16        0   125
#> [100,]  54  23      1         10        0   131
#> [101,]  52   7      1          2        0   154
#> [102,]  55   6      1          2        1   114
#> [103,]  54   9      1          1        0   130
#> [104,]  55   4      1          2        0   150
#> [105,]  51  13      1         11        0   145
#> [106,]  50   5      1          4        1   150
#> [107,]  52   4      0        180        0   183
#> [108,]  50   3      0        174        1   153
#> [109,]  55  28      1         13        1   160
#> [110,]  49   1      0          1        1   110
#> [111,]  56   4      1          1        1   130
#> [112,]  52   5      0        175        1   117
#> [113,]  55   1      0        180        0   127
#> [114,]  54   1      0        180        0   162
#> [115,]  56   2      0        180        0   132
#> [116,]  55   5      1          4        1   120
#> [117,]  52   8      0        180        0   119
#> [118,]  53  18      1          9        1   150
#> [119,]  55   6      0        180        0   170
#> [120,]  52  16      0         16        0   152
#> [121,]  53  10      1          9        0   172
#> [122,]  52  16      1         14        0   170
#> [123,]  53   4      0        180        1   150
#> [124,]  55   6      0        180        1   100
#> [125,]  55   6      1          5        1   138
#> [126,]  55   2      0        134        1   140
#> [127,]  54   3      0        180        0   128
#> [128,]  56   3      0          8        1   139
#> [129,]  55   1      0          2        0   130
#> [130,]  54   2      1          1        1   176
#> [131,]  57   1      0          1        1   100
#> [132,]  53   3      1          0        1   200
#> [133,]  57  10      0        180        1   170
#> [134,]  54   5      0        180        1   108
#> [135,]  57   0      0          0        1   150
#> [136,]  53  21      1         13        1   130
#> [137,]  57   4      0        180        1   119
#> [138,]  58   6      1          0        1    90
#> [139,]  53  15      1         10        1   130
#> [140,]  55   9      1          2        1   147
#> [141,]  55  13      0        166        1   140
#> [142,]  56   5      0          5        1   150
#> [143,]  54  23      1          8        0   120
#> [144,]  57   4      1          2        1   185
#> [145,]  53   4      0        147        1   145
#> [146,]  53   7      1          0        1   120
#> [147,]  57  11      1         10        1   129
#> [148,]  55   5      0          5        1   131
#> [149,]  54   7      1          0        1   141
#> [150,]  59  15      1         10        0   140
#> [151,]  58   9      1          0        1   180
#> [152,]  55   5      1          0        0   140
#> [153,]  55   2      0          2        0   106
#> [154,]  57   1      0        180        0   148
#> [155,]  60  11      1          9        0   106
#> [156,]  58   4      1          0        1   160
#> [157,]  57   2      0          2        1   120
#> [158,]  57   5      0        180        1   130
#> [159,]  55   5      1          0        1   160
#> [160,]  59   5      0        180        1   155
#> [161,]  59   4      1          0        1   152
#> [162,]  58  26      1          0        1   189
#> [163,]  61   9      0          9        1   160
#> [164,]  58   4      1          3        0   120
#> [165,]  60   0      1          0        1    80
#> [166,]  61   4      1          3        0   151
#> [167,]  61   9      1          8        0   150
#> [168,]  61   3      1          2        1   102
#> [169,]  58   1      0          1        1   100
#> [170,]  57  13      1         10        0   110
#> [171,]  57   2      1          0        1   116
#> [172,]  58  10      0         10        1   150
#> [173,]  57   4      1          3        0   138
#> [174,]  57  11      0        180        1   150
#> [175,]  61   3      0         17        0   143
#> [176,]  57   3      1          2        0   120
#> [177,]  56  18      1         11        1   165
#> [178,]  59   9      1          0        1    80
#> [179,]  55   4      1          3        1   160
#> [180,]  60  12      1          0        1   114
#> [181,]  56   8      1          8        0   120
#> [182,]  57   1      0          1        0   126
#> [183,]  59   5      1          2        0   182
#> [184,]  58   5      1          1        1   135
#> [185,]  61   8      0         77        0   120
#> [186,]  58   8      1          5        0   152
#> [187,]  62  10      1          0        1   153
#> [188,]  57   3      1          0        0   100
#> [189,]  61  18      0        170        0   140
#> [190,]  61  28      1          7        0   133
#> [191,]  60   7      0          7        0   147
#> [192,]  57  12      1          9        1   120
#> [193,]  60  17      1          8        1   140
#> [194,]  58   3      1          0        1   146
#> [195,]  62   4      1          3        0   173
#> [196,]  58   2      0         30        0   202
#> [197,]  59   1      0        180        0   155
#> [198,]  61   5      0          5        1   110
#> [199,]  57  18      1          9        1    93
#> [200,]  58  11      1          9        0   179
#> [201,]  62  17      1         10        1   180
#> [202,]  62   1      1          0        1   172
#> [203,]  58   7      0        180        1   150
#> [204,]  63   1      0        180        1   130
#> [205,]  61   7      0        180        0   135
#> [206,]  63   4      1          3        0   222
#> [207,]  62   3      0        180        1   105
#> [208,]  63  15      1         10        1   126
#> [209,]  63   4      1          1        0   155
#> [210,]  60  18      1         13        0   132
#> [211,]  59   8      0        180        1   140
#> [212,]  58   9      1          9        0   110
#> [213,]  62   7      0          7        0   150
#> [214,]  58   2      0        180        0   127
#> [215,]  59   4      0        180        0   196
#> [216,]  60   7      0          7        0   140
#> [217,]  59   5      1          1        0   148
#> [218,]  60   7      1          1        1    90
#> [219,]  65  13      0        180        1   100
#> [220,]  62   6      0        180        0   170
#> [221,]  61  15      1         13        0   170
#> [222,]  60   3      0          3        0   168
#> [223,]  64  10      1          9        0   160
#> [224,]  62   6      0          6        0   120
#> [225,]  63  12      1         10        0   200
#> [226,]  60   8      0         17        1   130
#> [227,]  61   6      1          1        1   117
#> [228,]  66   3      1          1        0   127
#> [229,]  64  32      1          9        1   160
#> [230,]  63  12      1          9        0   114
#> [231,]  63   7      0        180        0   120
#> [232,]  66   5      1          0        1   110
#> [233,]  65   8      1          0        0   168
#> [234,]  60   6      0        180        0   130
#> [235,]  64  21      1         10        0   190
#> [236,]  61  12      1         11        0   154
#> [237,]  61   4      0        180        1   113
#> [238,]  63  12      0         12        1   150
#> [239,]  62   3      1          1        1   199
#> [240,]  65   6      0          9        0   112
#> [241,]  65   3      1          0        1    80
#> [242,]  63   5      1          4        0   170
#> [243,]  67  11      0         11        1   100
#> [244,]  64   2      0          2        0   201
#> [245,]  66  18      1          5        0   142
#> [246,]  61  14      1          5        0   140
#> [247,]  61  15      1         10        0   130
#> [248,]  63   9      1          8        1   160
#> [249,]  63   3      1          2        0   120
#> [250,]  64  19      1          8        1   160
#> [251,]  65   8      1          0        1   140
#> [252,]  65  15      1         11        1   160
#> [253,]  68   5      1          4        1   150
#> [254,]  64  13      1         12        1   150
#> [255,]  66   7      1          0        1   115
#> [256,]  66  13      1          0        0   118
#> [257,]  64  14      1         13        1   150
#> [258,]  67   4      1          3        0   130
#> [259,]  66   3      1          0        1   135
#> [260,]  65   2      1          1        1   170
#> [261,]  68   1      0        180        1   166
#> [262,]  64  10      1          9        1   110
#> [263,]  67   8      1          1        1   130
#> [264,]  68   5      0          5        1    90
#> [265,]  63  10      0         16        1   160
#> [266,]  66  14      0        180        0   130
#> [267,]  64   1      0          1        1   120
#> [268,]  68  18      0        180        1   260
#> [269,]  65  18      1          3        0   120
#> [270,]  63  10      0         18        1   130
#> [271,]  67  11      0         11        0   150
#> [272,]  68  11      0        180        0   160
#> [273,]  68  14      0         79        0   172
#> [274,]  66  12      1         10        1   150
#> [275,]  65  15      1         12        1   150
#> [276,]  66  11      1          0        0   100
#> [277,]  69  12      0         15        1   140
#> [278,]  66  15      1         13        1   160
#> [279,]  63   2      0        180        0   150
#> [280,]  69  21      1         10        0   180
#> [281,]  66   9      1          8        0   130
#> [282,]  63   8      0        180        1   120
#> [283,]  68  14      1         13        1   140
#> [284,]  65   8      1          0        1    90
#> [285,]  66   3      0          3        1   138
#> [286,]  69   1      1          0        0   170
#> [287,]  67   1      0        180        1   160
#> [288,]  68  10      1         10        1   150
#> [289,]  65   1      1          0        0   133
#> [290,]  67   7      1          4        1   130
#> [291,]  63   2      1          0        0    99
#> [292,]  67   2      0        180        0   184
#> [293,]  66  19      1         12        1   150
#> [294,]  67  12      1         12        0   160
#> [295,]  69   6      0         99        1   140
#> [296,]  64   4      0        179        0   160
#> [297,]  66   4      0        180        1   130
#> [298,]  70  15      1         12        1   132
#> [299,]  64   0      1          0        1   118
#> [300,]  66   4      0        180        0   177
#> [301,]  69  17      1         10        0   140
#> [302,]  69   8      0         93        0   140
#> [303,]  66   6      0        180        0   140
#> [304,]  65   1      0          1        1   120
#> [305,]  68  18      1          0        1   160
#> [306,]  71  20      1          0        1   160
#> [307,]  67   2      0        180        0   128
#> [308,]  66   9      1          3        1   151
#> [309,]  66   1      1          1        1   165
#> [310,]  70   4      1          0        1   180
#> [311,]  70  14      0        171        0   166
#> [312,]  67  10      1          9        0   200
#> [313,]  67   6      1          4        0   130
#> [314,]  68  18      1         14        1   170
#> [315,]  69   0      0          0        1   148
#> [316,]  68   7      1          0        1   150
#> [317,]  67  14      1         13        0   130
#> [318,]  65  14      1         13        1   150
#> [319,]  71   7      0          7        0   230
#> [320,]  66   2      0          2        1   228
#> [321,]  71   6      0         45        1   158
#> [322,]  69   5      0          5        1   142
#> [323,]  71   3      0        103        0   133
#> [324,]  69   3      0          3        1   130
#> [325,]  67   5      0          5        0   130
#> [326,]  68   6      0        180        0   145
#> [327,]  69   8      1          5        1   195
#> [328,]  69   6      1          4        1   174
#> [329,]  72   7      0          7        1   110
#> [330,]  69   8      1          7        1   108
#> [331,]  69  19      0        180        0   130
#> [332,]  68  18      0         18        1   100
#> [333,]  69  11      1          0        1   120
#> [334,]  66   2      0        180        0   130
#> [335,]  67   7      1          4        0   122
#> [336,]  68   2      0          7        1   130
#> [337,]  69   8      1          2        0   121
#> [338,]  67  13      1          9        0   130
#> [339,]  70   3      0        123        0   130
#> [340,]  72   5      1          4        0   170
#> [341,]  68   3      0         19        0   135
#> [342,]  67  12      1          8        0   120
#> [343,]  67   1      0          1        1    60
#> [344,]  69   5      0         76        0   120
#> [345,]  67   8      1          0        1   130
#> [346,]  72  13      1         11        1   195
#> [347,]  66  24      1         13        0   130
#> [348,]  70  35      1          0        1   105
#> [349,]  72  30      1          0        1   145
#> [350,]  70   7      0          7        0   102
#> [351,]  73  20      1          0        1   170
#> [352,]  71   6      0          9        0   120
#> [353,]  69  10      1          6        1   120
#> [354,]  70  11      0        180        1   210
#> [355,]  72  19      1          8        0   120
#> [356,]  67   9      0        180        0   158
#> [357,]  73  13      0        152        1   130
#> [358,]  72   2      0          2        1   100
#> [359,]  67   4      1          1        0   134
#> [360,]  68  23      0        180        1   220
#> [361,]  70   3      0        180        0   121
#> [362,]  69   3      0        180        0   220
#> [363,]  71   3      1          2        0   150
#> [364,]  72   5      0         28        0   120
#> [365,]  71   5      0        180        0   191
#> [366,]  73   6      0        180        1   117
#> [367,]  68   7      0        180        1   130
#> [368,]  72  16      1          1        1   130
#> [369,]  70   4      0        180        0   180
#> [370,]  69   1      1          0        0   155
#> [371,]  71   2      1          0        1   180
#> [372,]  73   7      0          7        1   140
#> [373,]  68  15      1         13        1   130
#> [374,]  70   3      0          3        1   159
#> [375,]  72   6      0        180        1   130
#> [376,]  73   0      0        180        1   161
#> [377,]  73   4      0        180        1   154
#> [378,]  69   2      1          0        1   110
#> [379,]  71   3      1          1        0   150
#> [380,]  71  15      1         11        0   165
#> [381,]  68   9      0        180        1   120
#> [382,]  71  20      1         10        0   140
#> [383,]  71  17      1         11        0   160
#> [384,]  71   3      1          2        1   190
#> [385,]  73  10      1          8        0   106
#> [386,]  69  12      1          1        1   149
#> [387,]  74   4      0          4        0   120
#> [388,]  73   4      0         58        1   160
#> [389,]  70   3      0        180        1   154
#> [390,]  73   6      0        180        0   110
#> [391,]  72  15      1          0        1   150
#> [392,]  73  17      1         11        0   140
#> [393,]  70   4      1          0        1   140
#> [394,]  71  14      1         13        1   170
#> [395,]  74   7      1          0        1   117
#> [396,]  72  10      1          8        1   153
#> [397,]  75   1      0          1        0   133
#> [398,]  75   2      1          1        0   145
#> [399,]  72  10      1          9        1   160
#> [400,]  73  10      1         10        1   120
#> [401,]  71   2      0         10        1   112
#> [402,]  73   1      0          1        1    80
#> [403,]  75   9      1          7        0   140
#> [404,]  75  13      1          1        1   130
#> [405,]  71  11      1          8        0   110
#> [406,]  72  15      1         12        1   120
#> [407,]  73  10      1          8        0   120
#> [408,]  70   7      1          4        0   184
#> [409,]  72   1      1          1        0   168
#> [410,]  72   7      0         57        1   145
#> [411,]  73  10      0        180        0   162
#> [412,]  72  11      0         11        1   140
#> [413,]  70   3      0          3        0   150
#> [414,]  73   5      1          3        1   112
#> [415,]  76  25      1         12        1   170
#> [416,]  72   2      0        180        0   120
#> [417,]  75   1      0        180        1   140
#> [418,]  71   3      1          0        0   144
#> [419,]  73   4      0        180        0   124
#> [420,]  74  34      1          8        1   233
#> [421,]  71  32      1         12        1   107
#> [422,]  72   5      0        180        0   154
#> [423,]  72   3      0        180        0   160
#> [424,]  77   4      0          4        0   185
#> [425,]  75   3      1          1        0   180
#> [426,]  72   7      1          2        0   142
#> [427,]  73  15      0         15        1   160
#> [428,]  71  16      0        180        0   140
#> [429,]  76   1      0        180        0   114
#> [430,]  74   2      1          1        0   140
#> [431,]  76   8      1          0        1   141
#> [432,]  74  19      1          4        1   200
#> [433,]  75  23      1         14        1   110
#> [434,]  74   2      0        180        0   190
#> [435,]  72   4      0         85        1   120
#> [436,]  72   4      1          3        0   160
#> [437,]  76  17      1          0        1   200
#> [438,]  76  13      1         10        0   110
#> [439,]  75   4      1          0        1   122
#> [440,]  73  13      1         11        0   195
#> [441,]  75  12      0         12        1   160
#> [442,]  74   8      1          0        1   105
#> [443,]  74   6      0        180        0   160
#> [444,]  74   2      0        180        0   111
#> [445,]  73   1      0         52        1   105
#> [446,]  73   0      0        180        0   156
#> [447,]  72   5      0        180        0   120
#> [448,]  76  44      1         10        0   105
#> [449,]  76   5      0        180        0   185
#> [450,]  74  10      1          0        1   135
#> [451,]  74   8      1          8        1   170
#> [452,]  75   9      0        180        1   140
#> [453,]  73  33      1         12        1   175
#> [454,]  77  12      1          9        1   100
#> [455,]  73  10      1          9        0   146
#> [456,]  77  12      0        180        0   130
#> [457,]  77   1      1          0        1    90
#> [458,]  76  12      1         11        1   120
#> [459,]  78   5      1          0        1   170
#> [460,]  73   7      1          0        0   174
#> [461,]  74   6      0         79        1   140
#> [462,]  75   3      1          1        1   171
#> [463,]  75   6      0        180        0   150
#> [464,]  79  10      1          8        0   190
#> [465,]  74   2      1          0        1   130
#> [466,]  78  18      0         18        1   144
#> [467,]  77   3      0        180        0   110
#> [468,]  73   8      1          1        1   162
#> [469,]  73  11      1          2        1   110
#> [470,]  78   7      0          7        1   133
#> [471,]  74  15      0        180        1   172
#> [472,]  78   8      1          6        1   110
#> [473,]  74   7      0          7        0   161
#> [474,]  76  13      1          1        1   170
#> [475,]  78  32      1          9        1   198
#> [476,]  78   0      0        180        1   212
#> [477,]  75  12      1          1        1   120
#> [478,]  78  15      0        180        1   270
#> [479,]  80   8      0          8        1   120
#> [480,]  74  10      1          8        0   135
#> [481,]  76   1      0          1        1    83
#> [482,]  78  12      1          9        0   150
#> [483,]  78   2      1          1        0   130
#> [484,]  75   4      1          0        0   212
#> [485,]  77   2      1          0        1   143
#> [486,]  78  10      0        180        1   130
#> [487,]  75   3      0          3        0     0
#> [488,]  76   7      0         29        1   150
#> [489,]  77  24      0         24        1   160
#> [490,]  79   8      0         32        1   120
#> [491,]  80   9      0         23        1   128
#> [492,]  80   6      0          6        1   150
#> [493,]  78   6      1          0        1   240
#> [494,]  78  14      1          0        1   140
#> [495,]  81   1      0          1        0   130
#> [496,]  78  11      1          8        1   118
#> [497,]  76   4      0          4        1   160
#> [498,]  76  12      1         10        1   127
#> [499,]  77   6      0          6        1   107
#> [500,]  80   3      1          0        1   120
#> [501,]  75   2      1          1        1   204
#> [502,]  78  11      0        180        1   135
#> [503,]  76   1      0          1        1   140
#> [504,]  77  31      1          3        1   161
#> [505,]  78   7      1          0        1   110
#> [506,]  79   3      0          3        0   120
#> [507,]  77   7      0        180        1   170
#> [508,]  79   4      1          0        1   120
#> [509,]  81   1      0        180        0   120
#> [510,]  80  15      1         12        1   150
#> [511,]  77   9      1          4        0   141
#> [512,]  82   5      0          8        1   120
#> [513,]  80  40      1          0        1   138
#> [514,]  78   4      0         59        1   112
#> [515,]  80  17      1         12        0   100
#> [516,]  76   7      0        161        0   151
#> [517,]  79  10      0         10        1   120
#> [518,]  81   4      1          2        1   126
#> [519,]  79  28      0        164        0   100
#> [520,]  80   9      0        118        1   186
#> [521,]  80   6      0        173        1   160
#> [522,]  78  32      0        180        1   130
#> [523,]  79   1      0         37        1   140
#> [524,]  81   3      0        180        0   184
#> [525,]  81   2      0        175        0   172
#> [526,]  77  13      1          0        1   190
#> [527,]  78  15      0         15        0   165
#> [528,]  79   3      0          3        1   101
#> [529,]  78  26      1          5        0   194
#> [530,]  81   4      1          1        1   104
#> [531,]  78  20      1          0        1   109
#> [532,]  80   1      0          1        0   100
#> [533,]  78   3      1          1        1   152
#> [534,]  77  10      1          8        1   130
#> [535,]  82   3      1          1        1   144
#> [536,]  77   5      0         85        0   188
#> [537,]  80   2      1          1        0   168
#> [538,]  79   6      0          6        0   152
#> [539,]  78   2      0        180        0   148
#> [540,]  80   5      0          5        1   130
#> [541,]  79  10      0        180        1   150
#> [542,]  81   1      0        108        0   129
#> [543,]  78  12      0        180        0   134
#> [544,]  79   1      0        125        0   193
#> [545,]  82  21      1          2        0   155
#> [546,]  79   4      0          4        1   121
#> [547,]  80   6      0          6        1   110
#> [548,]  83   9      1          5        1   170
#> [549,]  82   5      0        180        0   110
#> [550,]  83   5      0        180        0   148
#> [551,]  79   7      1          6        0   130
#> [552,]  81  11      1          8        0   160
#> [553,]  80  11      1          8        0   170
#> [554,]  78  23      1         10        1   145
#> [555,]  79   4      0          4        1   183
#> [556,]  82   8      1          1        0   128
#> [557,]  81  15      0        180        1   140
#> [558,]  80   7      1          0        1   146
#> [559,]  84   5      1          1        1    85
#> [560,]  81  20      1          9        0   170
#> [561,]  83   8      0          8        0   115
#> [562,]  81  16      0         16        1   110
#> [563,]  80   6      1          0        1   150
#> [564,]  80  11      1          8        0   110
#> [565,]  81   8      0        180        0   146
#> [566,]  80   8      1          7        0   160
#> [567,]  79   0      1          0        1    96
#> [568,]  85   4      0        180        0    90
#> [569,]  82   6      0        128        1   100
#> [570,]  84   4      0        167        0   198
#> [571,]  80   3      1          1        1   230
#> [572,]  82  23      1          0        0   110
#> [573,]  84   5      0        180        1   203
#> [574,]  81   1      0          1        1   150
#> [575,]  81   4      0         90        1   138
#> [576,]  79   9      1          8        0   150
#> [577,]  85   3      1          2        1   160
#> [578,]  84   4      0         89        1   129
#> [579,]  80   2      1          0        1   130
#> [580,]  79   4      0          4        1    60
#> [581,]  83   1      0          1        1   100
#> [582,]  82  19      0         19        0   120
#> [583,]  80  30      1         13        0   220
#> [584,]  83   9      0        180        0   198
#> [585,]  83   3      0        114        0    98
#> [586,]  83   2      0        154        0   130
#> [587,]  85   9      1          6        1   160
#> [588,]  83   1      0        180        0   160
#> [589,]  81   4      0          4        0   175
#> [590,]  84  15      1         13        1   110
#> [591,]  82  16      1          8        0   103
#> [592,]  82   5      1          0        1   146
#> [593,]  81   4      0          4        0   160
#> [594,]  86  12      0        180        1   120
#> [595,]  83  12      1          2        1   170
#> [596,]  82   3      1          2        0   130
#> [597,]  83   7      0        126        0   135
#> [598,]  86   8      0          8        1   132
#> [599,]  81  16      1          9        0   180
#> [600,]  84   6      0        165        0   145
#> [601,]  86   3      0          3        1   140
#> [602,]  82   9      0        180        1   134
#> [603,]  81  13      0        180        0   152
#> [604,]  85   3      0          3        1   118
#> [605,]  81   2      1          0        1   118
#> [606,]  81   4      0        180        0   160
#> [607,]  83   9      0        180        1   149
#> [608,]  87   2      0          5        1   137
#> [609,]  86  12      1          0        1   132
#> [610,]  82  14      1         11        1   103
#> [611,]  86   6      1          0        1   140
#> [612,]  84  16      0         70        1   150
#> [613,]  84   3      1          2        0   125
#> [614,]  86   2      0        180        1   169
#> [615,]  83  13      1         12        0   170
#> [616,]  84   7      1          2        0   148
#> [617,]  87   2      0        180        0   113
#> [618,]  84   9      0         92        1   110
#> [619,]  84   3      0        180        1   170
#> [620,]  86   4      0         38        1   122
#> [621,]  86  13      0        177        0   163
#> [622,]  85   3      0          3        1   113
#> [623,]  86   6      0          6        1   117
#> [624,]  84  13      0         62        1   100
#> [625,]  86   6      1          1        0   112
#> [626,]  88   4      0          4        0   100
#> [627,]  83  20      1          3        1   150
#> [628,]  88   4      0          4        1   115
#> [629,]  85  22      0         22        1   184
#> [630,]  83   9      0         65        1   150
#> [631,]  86   9      1          7        1   142
#> [632,]  86   6      0         46        0   173
#> [633,]  87   8      0          8        1   157
#> [634,]  86  15      1          8        1   109
#> [635,]  89   4      0          4        1   153
#> [636,]  85   8      0          8        1   136
#> [637,]  84   2      0        110        1   174
#> [638,]  84   0      0        180        1   136
#> [639,]  88   1      0          1        0   135
#> [640,]  86   4      0        180        1   145
#> [641,]  87   2      0        180        0   160
#> [642,]  87   6      1          0        0   125
#> [643,]  91  10      0        145        0   135
#> [644,]  86   3      1          0        1    80
#> [645,]  87   6      0        126        1   168
#> [646,]  90   4      1          0        0   121
#> [647,]  88   3      1          2        0   159
#> [648,]  89   3      1          1        1   160
#> [649,]  92   1      0          1        1   167
#> [650,]  91   3      0         33        1   137
#> [651,]  87   7      0         74        1   105
#> [652,]  89  12      1          0        1   130
#> [653,]  91   5      0        169        1   176
#> [654,]  89   4      0          4        1   159
#> [655,]  89  14      0        180        1    84
#> [656,]  90  18      0        180        0   188
#> [657,]  90  19      1         11        1   129
#> [658,]  94   6      0         50        0    78
#> [659,]  91   2      0          2        1   116
#> [660,]  94   8      0          8        1   142
#> [661,]  92   4      0         76        1   149
#> [662,]  90  16      0         16        1   106
#> [663,]  90   3      0         67        0   162
#> [664,]  96   3      0         12        1    97
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  91   7      0          7        0   135
#> [668,]  93   0      1          0        1   122
#> [669,]  92   5      0         69        0   139
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+  12.0 
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+   5.0+   2.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+   6.0+ 180.0+  73.0    5.0+ 161.0+ 180.0+ 180.0+
#>  [51] 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+ 180.0+
#>  [61]   7.0  180.0+ 180.0+   1.0  179.0+ 180.0+ 179.0+ 180.0+   4.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0   88.0+
#>  [81]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+   4.0+  85.0  180.0+ 180.0+ 166.0+  99.0   16.0+ 152.0+
#> [101]   7.0+   6.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+ 174.0+  28.0    1.0 
#> [111] 180.0+ 175.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+
#> [121] 180.0+  16.0  180.0+ 180.0+ 180.0+ 134.0+ 180.0+   8.0    2.0  180.0+
#> [131]   1.0  180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+  15.0 
#> [141] 166.0+   5.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#> [151]   9.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+   9.0+ 180.0+   0.5  180.0+ 180.0+   3.0    1.0  180.0+
#> [171] 180.0+  10.0+ 180.0+ 180.0+  17.0    3.0+ 180.0+   9.0+ 180.0+ 172.0+
#> [181]   8.0    1.0+ 180.0+ 180.0+  77.0    8.0+ 180.0+ 180.0+ 170.0   94.0 
#> [191]   7.0+ 180.0+ 180.0+   3.0+ 180.0+  30.0  180.0+   5.0   18.0  180.0+
#> [201] 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [211] 180.0+   9.0    7.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+   3.0+ 167.0    6.0+ 180.0+  17.0  180.0+   3.0+ 180.0+  12.0 
#> [231] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0+ 180.0+  12.0  180.0+   9.0 
#> [241]   3.0  180.0+  11.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+   3.0+ 103.0 
#> [251]  15.0  180.0+   5.0+  13.0  179.0+ 166.0+  14.0+ 180.0+   3.0+ 175.0+
#> [261] 180.0+ 180.0+   8.0    5.0   16.0  180.0+   1.0  180.0+ 123.0+  18.0 
#> [271]  11.0+ 180.0+  79.0   80.0   15.0+ 180.0+  15.0  180.0+ 180.0+ 174.0+
#> [281] 180.0+ 180.0+ 180.0+   8.0+   3.0  175.0  180.0+  10.0  180.0+ 180.0+
#> [291] 180.0+ 180.0+  19.0+  12.0   99.0  179.0+ 180.0+ 180.0+   0.5  180.0+
#> [301] 180.0+  93.0  180.0+   1.0   18.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+
#> [311] 171.0  174.0+   6.0  180.0+   0.5  180.0+ 180.0+  14.0+   7.0+   2.0 
#> [321]  45.0    5.0+ 103.0    3.0+   5.0+ 180.0+ 180.0+  97.0    7.0    8.0+
#> [331] 180.0+  18.0  180.0+ 180.0+   7.0    7.0    8.0+  13.0+ 123.0  180.0+
#> [341]  19.0  180.0+   1.0   76.0  180.0+ 132.0  180.0+ 180.0+ 162.0    7.0+
#> [351] 124.0    9.0  180.0+ 180.0+ 180.0+ 180.0+ 152.0    2.0   76.0  180.0+
#> [361] 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+
#> [371] 180.0+   7.0+  15.0    3.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+
#> [381] 180.0+  20.0  180.0+   3.0   87.0   12.0    4.0+  58.0  180.0+ 180.0+
#> [391] 180.0+ 180.0+ 180.0+  14.0+ 180.0+  10.0+   1.0  180.0+ 159.0   15.0 
#> [401]  10.0    1.0  180.0+  13.0  180.0+ 180.0+  10.0  104.0+   1.0   57.0 
#> [411] 180.0+  11.0    3.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0 
#> [421] 177.0+ 180.0+ 180.0+   4.0+ 180.0+   7.0   15.0+ 180.0+ 180.0+ 180.0+
#> [431] 180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+  17.0+ 174.0+   4.0  180.0+
#> [441]  12.0  180.0+ 180.0+ 180.0+  52.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [451]   8.0  180.0+  33.0  180.0+ 180.0+ 180.0+   1.0   12.0  180.0+   7.0+
#> [461]  79.0    3.0  180.0+ 180.0+ 176.0+  18.0  180.0+ 180.0+  11.0    7.0 
#> [471] 180.0+   8.0+   7.0  180.0+  32.0  180.0+  12.0  180.0+   8.0  180.0+
#> [481]   1.0  180.0+ 180.0+   4.0+   2.0  180.0+   3.0   29.0   24.0   32.0 
#> [491]  23.0    6.0  180.0+ 180.0+   1.0   11.0    4.0  180.0+   6.0    3.0+
#> [501]   2.0+ 180.0+   1.0  171.0   43.0    3.0  180.0+ 138.0  180.0+ 180.0+
#> [511]  71.0    8.0   40.0   59.0   17.0  161.0   10.0+  93.0  164.0  118.0 
#> [521] 173.0  180.0+  37.0  180.0+ 175.0+  22.0   15.0+   3.0  171.0+  71.0 
#> [531]  20.0+   1.0    3.0+  10.0  180.0+  85.0   10.0    6.0+ 180.0+   5.0 
#> [541] 180.0+ 108.0  180.0+ 125.0  180.0+   4.0    6.0    9.0+ 180.0+ 180.0+
#> [551] 180.0+ 180.0+ 169.0   70.0    4.0  180.0+ 180.0+   7.0+ 180.0+  20.0 
#> [561]   8.0+  16.0  180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 128.0  167.0 
#> [571]   3.0+  62.0  180.0+   1.0   90.0  180.0+ 180.0+  89.0  180.0+   4.0 
#> [581]   1.0   19.0   30.0  180.0+ 114.0  154.0  180.0+ 180.0+   4.0+ 180.0+
#> [591]  16.0+   5.0+   4.0+ 180.0+  77.0    3.0  126.0    8.0  180.0+ 165.0 
#> [601]   3.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 174.0 
#> [611]   6.0   70.0  180.0+ 180.0+  13.0  180.0+ 180.0+  92.0  180.0+  38.0 
#> [621] 177.0    3.0+   6.0+  62.0    6.0+   4.0+  20.0    4.0   22.0   65.0 
#> [631]  11.0   46.0    8.0+ 180.0+   4.0    8.0  110.0  180.0+   1.0+ 180.0+
#> [641] 180.0+  25.0  145.0    3.0  126.0    4.0   75.0    3.0+   1.0   33.0 
#> [651]  74.0  180.0+ 169.0    4.0  180.0+ 180.0+ 180.0+  50.0    2.0    8.0+
#> [661]  76.0   16.0   67.0   12.0   26.0   53.0    7.0+   0.5   69.0   15.0+
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
#>   0.8456661 
```
