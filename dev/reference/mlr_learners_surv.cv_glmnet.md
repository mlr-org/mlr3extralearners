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
#> min 0.00338    44   2.786 0.1403       6
#> 1se 0.06629    12   2.908 0.1382       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35   2      0        180        0   121
#>   [5,]  37   9      0        180        1   151
#>   [6,]  38  13      1          0        1   161
#>   [7,]  38   2      0        115        0   150
#>   [8,]  35   0      0        180        1   119
#>   [9,]  38  12      1          8        1   120
#>  [10,]  36   5      1          0        1   115
#>  [11,]  33   6      1          1        1   115
#>  [12,]  38  16      1         10        0   160
#>  [13,]  38  12      1         11        1    92
#>  [14,]  40  12      1          9        0   153
#>  [15,]  42   3      1          1        1   130
#>  [16,]  37   1      1          0        1   146
#>  [17,]  40   2      1          1        1   148
#>  [18,]  38   5      1          3        0   125
#>  [19,]  40   6      0        180        1   138
#>  [20,]  42   2      0        180        0   100
#>  [21,]  43   3      1          0        1   100
#>  [22,]  43   4      1          0        1   130
#>  [23,]  42   4      0        180        0   162
#>  [24,]  42  15      1         13        1   125
#>  [25,]  40   3      1          1        0   170
#>  [26,]  43   2      1          1        1   116
#>  [27,]  42   2      0        180        1   124
#>  [28,]  44   5      1          1        0   170
#>  [29,]  45   3      0        180        1   154
#>  [30,]  41  10      1          8        0   150
#>  [31,]  44   3      0        180        0   141
#>  [32,]  45   6      0        180        1   170
#>  [33,]  45   2      0        180        1   140
#>  [34,]  46  15      0        180        0   120
#>  [35,]  46   2      1          1        0   126
#>  [36,]  48  15      0        180        1   160
#>  [37,]  44   3      1          0        1   180
#>  [38,]  46   7      1          2        0   166
#>  [39,]  43  10      0        180        0   185
#>  [40,]  47   6      1          0        1   116
#>  [41,]  46  13      1         10        0   100
#>  [42,]  44   0      1          0        1    96
#>  [43,]  47   4      1          3        1   160
#>  [44,]  43   3      1          0        1   124
#>  [45,]  46   2      1          1        1   122
#>  [46,]  46   6      1          0        1   100
#>  [47,]  45   5      0        180        1   190
#>  [48,]  46   5      1          3        0   130
#>  [49,]  44   2      0        180        0   142
#>  [50,]  46  15      0        180        1   120
#>  [51,]  45   9      1          0        1   145
#>  [52,]  47   9      1          6        0   170
#>  [53,]  49   4      0        180        0   117
#>  [54,]  47   7      0        180        0   145
#>  [55,]  50   4      1          1        0   125
#>  [56,]  50   6      1          2        1   140
#>  [57,]  49   7      1          7        1   110
#>  [58,]  46   3      1          1        1   140
#>  [59,]  46   9      1          9        1   122
#>  [60,]  51   1      0          1        1   145
#>  [61,]  49  15      1         11        1   160
#>  [62,]  47   2      0        180        0   150
#>  [63,]  46   6      1          0        1   156
#>  [64,]  52   2      0        180        1   170
#>  [65,]  50   7      1          0        1    92
#>  [66,]  50   4      0          4        1   100
#>  [67,]  50   1      1          0        0   150
#>  [68,]  47   8      0        180        0   160
#>  [69,]  47   6      0        180        1   162
#>  [70,]  51   8      0        180        1   140
#>  [71,]  52   2      0        180        0   155
#>  [72,]  46   3      0        180        1   120
#>  [73,]  46   1      1          1        0   145
#>  [74,]  50   4      1          1        0   150
#>  [75,]  48   7      1          0        1   110
#>  [76,]  53   8      0         36        1   160
#>  [77,]  48  17      1         10        0   111
#>  [78,]  47   2      1          1        0   110
#>  [79,]  49  15      0        180        1   160
#>  [80,]  54  17      1         12        1   102
#>  [81,]  53   7      1          0        0   199
#>  [82,]  54   6      1          3        0   129
#>  [83,]  51   3      1          1        0   140
#>  [84,]  50   2      0          5        1   106
#>  [85,]  50  10      1          6        0   122
#>  [86,]  50  14      1         13        0   170
#>  [87,]  53   8      1          7        0   160
#>  [88,]  48   3      1          2        0   150
#>  [89,]  51  25      1          1        0   202
#>  [90,]  49   5      1          2        1   150
#>  [91,]  53   4      0          4        0   140
#>  [92,]  52  14      1          7        1   200
#>  [93,]  48   6      0        180        0   160
#>  [94,]  53   4      1          0        1   156
#>  [95,]  54   9      1          0        1   138
#>  [96,]  49  16      0         16        0   125
#>  [97,]  54  23      1         10        0   131
#>  [98,]  52   7      1          2        0   154
#>  [99,]  55   6      1          2        1   114
#> [100,]  54   9      1          1        0   130
#> [101,]  52   4      0        180        1   180
#> [102,]  51  13      1         11        0   145
#> [103,]  50   5      1          4        1   150
#> [104,]  54   4      1          0        1   121
#> [105,]  52   4      0        180        0   183
#> [106,]  55  28      1         13        1   160
#> [107,]  49   6      1          0        1   130
#> [108,]  49   1      0          1        1   110
#> [109,]  50   7      1          1        0   156
#> [110,]  53   8      1          0        1   130
#> [111,]  50   7      1          0        1   127
#> [112,]  56   4      1          1        1   130
#> [113,]  52   5      0        175        1   117
#> [114,]  55   1      0        180        0   127
#> [115,]  54   7      1          0        1   100
#> [116,]  56   3      0        180        1   193
#> [117,]  56   2      0        180        0   132
#> [118,]  53  18      1          9        1   150
#> [119,]  55   6      0        180        0   170
#> [120,]  53  10      1          9        0   172
#> [121,]  52  16      1         14        0   170
#> [122,]  53  15      0         15        1    90
#> [123,]  53   4      0        180        1   150
#> [124,]  55   6      0        180        1   100
#> [125,]  55   6      1          5        1   138
#> [126,]  54  12      1          0        1   190
#> [127,]  55   2      0        134        1   140
#> [128,]  54   3      0        180        0   128
#> [129,]  57   3      0          3        0   120
#> [130,]  54   2      1          1        0   135
#> [131,]  52   9      1          3        0   170
#> [132,]  57   1      0          1        1   100
#> [133,]  52   2      0        180        0   140
#> [134,]  55  11      1          7        0   104
#> [135,]  52  15      1         14        0   130
#> [136,]  56  14      1         11        0   130
#> [137,]  57  10      0        180        1   170
#> [138,]  58   8      0          8        1   130
#> [139,]  55   3      1          1        1   156
#> [140,]  57   0      0          0        1   150
#> [141,]  53  21      1         13        1   130
#> [142,]  59   3      1          1        0   172
#> [143,]  58   6      1          0        1    90
#> [144,]  53  15      1         10        1   130
#> [145,]  54  17      1          8        1   227
#> [146,]  55   9      1          2        1   147
#> [147,]  55  13      0        166        1   140
#> [148,]  56   5      0          5        1   150
#> [149,]  54  23      1          8        0   120
#> [150,]  57   4      1          2        1   185
#> [151,]  53   4      0        147        1   145
#> [152,]  57  11      1         10        1   129
#> [153,]  54   7      1          0        1   141
#> [154,]  56   4      0          4        0   164
#> [155,]  59  15      1         10        0   140
#> [156,]  58   9      1          0        1   180
#> [157,]  58   1      1          1        1   200
#> [158,]  55   5      1          0        0   140
#> [159,]  55   2      0          2        0   106
#> [160,]  59   9      1          1        1   125
#> [161,]  57   1      0        180        0   148
#> [162,]  58   4      1          0        1   160
#> [163,]  57   2      0          2        1   120
#> [164,]  57   5      0        180        1   130
#> [165,]  58  11      1          9        1   124
#> [166,]  57  10      1          9        0   103
#> [167,]  59   5      0        180        1   155
#> [168,]  58  26      1          0        1   189
#> [169,]  58   4      1          3        0   120
#> [170,]  60   0      1          0        1    80
#> [171,]  58  14      1          6        0   190
#> [172,]  61   9      1          8        0   150
#> [173,]  61   3      1          2        1   102
#> [174,]  58   1      0          1        1   100
#> [175,]  58  10      0         10        1   150
#> [176,]  57   4      1          3        0   138
#> [177,]  61   3      0         17        0   143
#> [178,]  56  14      0         45        0   130
#> [179,]  57   3      1          2        0   120
#> [180,]  58  19      1         13        1   140
#> [181,]  59   9      1          0        1    80
#> [182,]  55   4      1          3        1   160
#> [183,]  58  11      0        172        1   135
#> [184,]  55   9      1          7        1   135
#> [185,]  61  13      1         12        1   130
#> [186,]  59  11      1          8        1   190
#> [187,]  57   1      0          1        0   126
#> [188,]  57  15      1         13        1   110
#> [189,]  59   5      1          2        0   182
#> [190,]  58   5      1          1        1   135
#> [191,]  61   8      0         77        0   120
#> [192,]  61  13      0         13        0   210
#> [193,]  58   8      1          5        0   152
#> [194,]  62   7      1          2        1   180
#> [195,]  57   3      1          0        0   100
#> [196,]  61  18      0        170        0   140
#> [197,]  58   8      1          3        1   150
#> [198,]  57   7      0        169        0   180
#> [199,]  61   7      0          7        1   150
#> [200,]  60   7      0          7        0   147
#> [201,]  61   6      0          6        0   134
#> [202,]  57  12      1          9        1   120
#> [203,]  62   4      1          0        0   160
#> [204,]  58   3      1          0        1   146
#> [205,]  62   4      1          3        0   173
#> [206,]  58   2      0         30        0   202
#> [207,]  63   6      0         28        1   120
#> [208,]  61  13      0         13        0   120
#> [209,]  61   5      0          5        1   110
#> [210,]  57  18      1          9        1    93
#> [211,]  61   5      0          5        1   160
#> [212,]  58  11      1          9        0   179
#> [213,]  57   2      1          1        0   159
#> [214,]  62   1      1          0        1   172
#> [215,]  58   7      0        180        1   150
#> [216,]  63   1      0        180        1   130
#> [217,]  61   7      0        180        0   135
#> [218,]  62   3      0        180        1   105
#> [219,]  63   4      0        180        1   190
#> [220,]  63  15      1         10        1   126
#> [221,]  64   4      0        180        0   130
#> [222,]  61   9      1          9        1   150
#> [223,]  58   9      1          9        0   110
#> [224,]  62   7      0          7        0   150
#> [225,]  58   2      0        180        0   127
#> [226,]  59   4      0        180        0   196
#> [227,]  60   7      1          5        1   141
#> [228,]  60   7      0          7        0   140
#> [229,]  59   5      1          1        0   148
#> [230,]  63   1      0          1        0   130
#> [231,]  62   6      0        180        0   170
#> [232,]  64  10      1          9        0   160
#> [233,]  62   6      0          6        0   120
#> [234,]  63  12      1         10        0   200
#> [235,]  60   8      0         17        1   130
#> [236,]  64  12      1         11        0   160
#> [237,]  63  10      1          0        1   148
#> [238,]  65  36      1         11        0   140
#> [239,]  63   4      1          3        0   162
#> [240,]  61  10      1          2        1   194
#> [241,]  64  32      1          9        1   160
#> [242,]  63  12      1          9        0   114
#> [243,]  63   7      0        180        0   120
#> [244,]  66   5      1          0        1   110
#> [245,]  65  10      1          8        1   120
#> [246,]  64  21      1         10        0   190
#> [247,]  61  12      1         11        0   154
#> [248,]  61   4      0        180        1   113
#> [249,]  65   3      0        180        1   190
#> [250,]  63  16      1          7        1   110
#> [251,]  64   7      0        180        1   120
#> [252,]  63  12      0         12        1   150
#> [253,]  62   3      1          1        1   199
#> [254,]  65   6      0          9        0   112
#> [255,]  65   3      1          0        1    80
#> [256,]  63   5      1          4        0   170
#> [257,]  63   2      1          1        0   180
#> [258,]  62  13      1         11        0   180
#> [259,]  64   2      0          2        0   201
#> [260,]  66  18      1          5        0   142
#> [261,]  66  16      1         11        1   169
#> [262,]  62   9      0        180        0   145
#> [263,]  61  15      1         10        0   130
#> [264,]  63   2      1          0        0   140
#> [265,]  65   8      1          0        1   140
#> [266,]  67   6      0        180        1   170
#> [267,]  65  15      1         11        1   160
#> [268,]  64  13      1         12        1   150
#> [269,]  64   6      1          0        1   125
#> [270,]  66  13      1          0        0   118
#> [271,]  64  14      1         13        1   150
#> [272,]  65   3      0          3        0   105
#> [273,]  67   4      1          3        0   130
#> [274,]  64  10      1          9        1   110
#> [275,]  63   7      1          0        0   162
#> [276,]  66  14      0        180        0   130
#> [277,]  64   1      0          1        1   120
#> [278,]  68  18      0        180        1   260
#> [279,]  65  17      1         14        1   100
#> [280,]  65  18      1          3        0   120
#> [281,]  63   1      1          0        1   155
#> [282,]  63  10      0         18        1   130
#> [283,]  68  14      0         79        0   172
#> [284,]  66  12      1         10        1   150
#> [285,]  65  15      1         12        1   150
#> [286,]  66  11      1          0        0   100
#> [287,]  65   4      1          2        1   145
#> [288,]  66  15      1         13        1   160
#> [289,]  63   2      0        180        0   150
#> [290,]  69  21      1         10        0   180
#> [291,]  69   6      0        180        1   100
#> [292,]  66   9      1          8        0   130
#> [293,]  68  14      1         13        1   140
#> [294,]  65   8      1          0        1    90
#> [295,]  69   1      1          0        0   170
#> [296,]  67   1      0        180        1   160
#> [297,]  68  10      1         10        1   150
#> [298,]  65   1      1          0        0   133
#> [299,]  63   2      1          0        0    99
#> [300,]  67   2      0        180        0   184
#> [301,]  65  10      1          1        1   148
#> [302,]  66  19      1         12        1   150
#> [303,]  67  12      1         12        0   160
#> [304,]  69   6      0         99        1   140
#> [305,]  65   4      1          1        0   130
#> [306,]  64   4      0        179        0   160
#> [307,]  66   4      0        180        1   130
#> [308,]  70  15      1         12        1   132
#> [309,]  64  11      0         11        0   125
#> [310,]  64   4      0        180        1   140
#> [311,]  64   0      1          0        1   118
#> [312,]  67   2      0         18        0   131
#> [313,]  66   4      0        180        0   177
#> [314,]  68   4      1          0        1   160
#> [315,]  69   4      1          3        1   150
#> [316,]  69  17      1         10        0   140
#> [317,]  65   6      0        101        1   115
#> [318,]  68   4      0          4        1   190
#> [319,]  71   3      0          5        0   112
#> [320,]  70   7      1          0        1   190
#> [321,]  68   7      0        150        0   210
#> [322,]  66   9      1          3        1   151
#> [323,]  70   4      1          0        1   180
#> [324,]  69   8      0        180        1   153
#> [325,]  70  14      0        171        0   166
#> [326,]  66   4      0        180        0   130
#> [327,]  69   0      0          0        1   148
#> [328,]  65   2      0        180        0   130
#> [329,]  69   3      1          2        0   151
#> [330,]  67  14      1         13        0   130
#> [331,]  65  14      1         13        1   150
#> [332,]  71   7      0          7        0   230
#> [333,]  71   6      0         45        1   158
#> [334,]  69   5      0          5        1   142
#> [335,]  71   3      0        103        0   133
#> [336,]  69   3      0          3        1   130
#> [337,]  70  22      1         13        0   103
#> [338,]  67   5      0          5        0   130
#> [339,]  69   8      1          5        1   195
#> [340,]  72   7      0          7        1   110
#> [341,]  67   3      0        180        0   110
#> [342,]  66   2      1          1        0   123
#> [343,]  68  18      0         18        1   100
#> [344,]  69  11      1          0        1   120
#> [345,]  66   2      0        180        0   130
#> [346,]  67   7      1          4        0   122
#> [347,]  69   4      1          3        0   132
#> [348,]  69   8      1          2        0   121
#> [349,]  70   3      0        123        0   130
#> [350,]  72   5      1          4        0   170
#> [351,]  68   3      0         19        0   135
#> [352,]  69   1      0          1        1   110
#> [353,]  67   1      0          1        1    60
#> [354,]  67   4      0         60        1   136
#> [355,]  66  24      1         13        0   130
#> [356,]  70  35      1          0        1   105
#> [357,]  72  30      1          0        1   145
#> [358,]  70   7      0          7        0   102
#> [359,]  68   7      1          2        0   135
#> [360,]  73  20      1          0        1   170
#> [361,]  71   6      0          9        0   120
#> [362,]  70  11      0        180        1   210
#> [363,]  72  19      1          8        0   120
#> [364,]  67   8      0        180        1   170
#> [365,]  67   9      0        180        0   158
#> [366,]  70   5      0        180        0   150
#> [367,]  72   2      0          2        1   100
#> [368,]  67   4      1          1        0   134
#> [369,]  72   6      1          5        0   115
#> [370,]  71   1      0        173        1   188
#> [371,]  71   3      1          2        0   150
#> [372,]  68   4      1          3        0   210
#> [373,]  72   5      0         28        0   120
#> [374,]  71   5      0        180        0   191
#> [375,]  68   7      0        180        1   130
#> [376,]  70   4      0        180        0   180
#> [377,]  73   7      0          7        1   140
#> [378,]  68  15      1         13        1   130
#> [379,]  70   3      0          3        1   159
#> [380,]  72   6      0        180        1   130
#> [381,]  73   0      0        180        1   161
#> [382,]  71   3      1          1        0   150
#> [383,]  71  15      1         11        0   165
#> [384,]  68   9      0        180        1   120
#> [385,]  71  20      1         10        0   140
#> [386,]  74   0      1          0        1    90
#> [387,]  73   3      1          0        1   136
#> [388,]  70   5      1          0        1   190
#> [389,]  71  17      1         11        0   160
#> [390,]  71   3      1          2        1   190
#> [391,]  73  10      1          8        0   106
#> [392,]  69  12      1          1        1   149
#> [393,]  70  26      1         11        1   120
#> [394,]  74   4      0          4        0   120
#> [395,]  73   4      0         58        1   160
#> [396,]  72   5      1          3        1   160
#> [397,]  70   3      0        180        1   154
#> [398,]  73   6      0        180        0   110
#> [399,]  72  15      1          0        1   150
#> [400,]  71   7      1          2        0   143
#> [401,]  72   8      1          0        1   140
#> [402,]  74   3      0          3        1   150
#> [403,]  73  17      1         11        0   140
#> [404,]  70   4      1          0        1   140
#> [405,]  74   7      1          0        1   117
#> [406,]  72  10      1          8        1   153
#> [407,]  69   7      0        180        1   144
#> [408,]  71  10      1          9        1   120
#> [409,]  75   1      0          1        0   133
#> [410,]  75   2      1          1        0   145
#> [411,]  73  10      1          9        1   146
#> [412,]  72  10      1          9        1   160
#> [413,]  73   1      0          1        1    80
#> [414,]  75  13      1          1        1   130
#> [415,]  71  11      1          8        0   110
#> [416,]  71   4      0          4        0   134
#> [417,]  70   7      1          4        0   184
#> [418,]  72  11      0         11        1   140
#> [419,]  76  25      1         12        1   170
#> [420,]  73  12      1         12        1   140
#> [421,]  72   2      0        180        0   120
#> [422,]  72   4      1          0        1   197
#> [423,]  71   3      1          0        0   144
#> [424,]  73   4      0        180        0   124
#> [425,]  71  32      1         12        1   107
#> [426,]  72   3      0        180        0   160
#> [427,]  76   5      0          5        1   130
#> [428,]  77  11      0         11        1   150
#> [429,]  77   4      0          4        0   185
#> [430,]  75   3      1          1        0   180
#> [431,]  73  15      0         15        1   160
#> [432,]  71  16      0        180        0   140
#> [433,]  73  10      1         10        0   124
#> [434,]  76   1      0        180        0   114
#> [435,]  74   2      1          1        0   140
#> [436,]  76   8      1          0        1   141
#> [437,]  74  19      1          4        1   200
#> [438,]  74   2      0        180        0   190
#> [439,]  72   4      1          3        0   160
#> [440,]  76  17      1          0        1   200
#> [441,]  73   4      1          3        1   125
#> [442,]  76  13      1         10        0   110
#> [443,]  75   7      0          7        0   190
#> [444,]  73  13      1         11        0   195
#> [445,]  76  13      1          8        1   148
#> [446,]  76   4      0          4        1   155
#> [447,]  75   1      0          1        1   125
#> [448,]  73   1      0         52        1   105
#> [449,]  72   5      0        180        0   120
#> [450,]  76  44      1         10        0   105
#> [451,]  76   5      0        180        0   185
#> [452,]  76   5      1          0        1   167
#> [453,]  75   9      0        180        1   140
#> [454,]  73  33      1         12        1   175
#> [455,]  77  12      0        180        0   130
#> [456,]  77   1      1          0        1    90
#> [457,]  76  12      1         11        1   120
#> [458,]  73   7      1          0        0   174
#> [459,]  74   6      0         79        1   140
#> [460,]  75   3      1          1        1   171
#> [461,]  79  10      1          8        0   190
#> [462,]  74   2      1          0        1   130
#> [463,]  78  18      0         18        1   144
#> [464,]  77   3      0        180        0   110
#> [465,]  76  29      0         47        0    90
#> [466,]  73   8      1          1        1   162
#> [467,]  73  11      1          2        1   110
#> [468,]  74   2      0        180        0   100
#> [469,]  78   7      0          7        1   133
#> [470,]  74  15      0        180        1   172
#> [471,]  78   8      1          6        1   110
#> [472,]  74   7      0          7        0   161
#> [473,]  76  13      1          1        1   170
#> [474,]  78  32      1          9        1   198
#> [475,]  79   6      0        180        0   170
#> [476,]  78   0      0        180        1   212
#> [477,]  78  13      1          5        0   130
#> [478,]  75  12      1          1        1   120
#> [479,]  78  15      0        180        1   270
#> [480,]  80   8      0          8        1   120
#> [481,]  74  10      1          8        0   135
#> [482,]  76   1      0          1        1    83
#> [483,]  79   4      0         80        0   145
#> [484,]  78  12      1          9        0   150
#> [485,]  77   2      1          0        1   143
#> [486,]  78  10      0        180        1   130
#> [487,]  76  11      1          0        0   120
#> [488,]  75   3      0          3        0     0
#> [489,]  80   9      0         23        1   128
#> [490,]  80   6      0          6        1   150
#> [491,]  76   3      1          0        1   140
#> [492,]  78  11      1          1        1   140
#> [493,]  79  11      0        180        0   160
#> [494,]  79   2      1          0        1   121
#> [495,]  81   1      0          1        0   130
#> [496,]  76   4      0          4        1   160
#> [497,]  76  10      1          8        0   180
#> [498,]  76  12      1         10        1   127
#> [499,]  80   3      1          0        1   120
#> [500,]  75   2      1          1        1   204
#> [501,]  78  11      0        180        1   135
#> [502,]  76   1      0          1        1   140
#> [503,]  77  31      1          3        1   161
#> [504,]  78   7      1          0        1   110
#> [505,]  77   7      0        180        1   170
#> [506,]  81   1      0        180        0   120
#> [507,]  80  15      1         12        1   150
#> [508,]  82   5      0          8        1   120
#> [509,]  80  40      1          0        1   138
#> [510,]  80  17      1         12        0   100
#> [511,]  76   7      0        161        0   151
#> [512,]  80  15      1          0        1    90
#> [513,]  81   4      1          2        1   126
#> [514,]  79  28      0        164        0   100
#> [515,]  80   9      0        118        1   186
#> [516,]  80   6      0        173        1   160
#> [517,]  78  32      0        180        1   130
#> [518,]  79   1      0         37        1   140
#> [519,]  81   2      0        175        0   172
#> [520,]  78  15      0         15        0   165
#> [521,]  78   4      0        180        0   175
#> [522,]  78  26      1          5        0   194
#> [523,]  81   4      1          1        1   104
#> [524,]  80   1      0          1        0   100
#> [525,]  80   2      1          1        0   168
#> [526,]  79   6      0          6        0   152
#> [527,]  80   6      1          0        1   119
#> [528,]  78   2      0        180        0   148
#> [529,]  79  10      0        180        1   150
#> [530,]  77   4      0        180        1    98
#> [531,]  81   1      0        108        0   129
#> [532,]  78  12      0        180        0   134
#> [533,]  79   1      0        125        0   193
#> [534,]  82  21      1          2        0   155
#> [535,]  84  22      1         10        0   180
#> [536,]  79   4      0          4        1   121
#> [537,]  80   6      0          6        1   110
#> [538,]  83   9      1          5        1   170
#> [539,]  82   5      0        180        0   110
#> [540,]  83   5      0        180        0   148
#> [541,]  81   5      0        177        0    41
#> [542,]  80  11      1          8        0   170
#> [543,]  78  23      1         10        1   145
#> [544,]  78   9      1          4        1   120
#> [545,]  82   8      1          1        0   128
#> [546,]  79   1      0        180        1   170
#> [547,]  81  15      0        180        1   140
#> [548,]  84   5      1          1        1    85
#> [549,]  81  20      1          9        0   170
#> [550,]  83   8      0          8        0   115
#> [551,]  81  16      0         16        1   110
#> [552,]  80   6      1          0        1   150
#> [553,]  80  11      1          8        0   110
#> [554,]  81   8      0        180        0   146
#> [555,]  79   7      0        177        0   197
#> [556,]  85   4      0        180        0    90
#> [557,]  81   2      1          1        0   198
#> [558,]  83   2      0          2        1   155
#> [559,]  84   4      0        167        0   198
#> [560,]  80   3      1          1        1   230
#> [561,]  82  23      1          0        0   110
#> [562,]  84   5      0        180        1   203
#> [563,]  81   1      0          1        1   150
#> [564,]  81   4      0         90        1   138
#> [565,]  79   9      1          8        0   150
#> [566,]  85   3      1          2        1   160
#> [567,]  80  13      1          8        1   140
#> [568,]  84   4      0         89        1   129
#> [569,]  80   2      1          0        1   130
#> [570,]  79   4      0          4        1    60
#> [571,]  83   1      0          1        1   100
#> [572,]  80  30      1         13        0   220
#> [573,]  83   9      0        180        0   198
#> [574,]  79  14      1          0        0   110
#> [575,]  81  14      1         12        1   128
#> [576,]  82   0      0          2        1   100
#> [577,]  83   1      0        180        0   160
#> [578,]  81   4      0          4        0   175
#> [579,]  81  12      0         12        1   163
#> [580,]  82  16      1          8        0   103
#> [581,]  82   5      1          0        1   146
#> [582,]  83   7      0        126        0   135
#> [583,]  81  16      1          9        0   180
#> [584,]  82   9      0        180        1   134
#> [585,]  84   3      0        180        1   120
#> [586,]  81   4      0        180        0   160
#> [587,]  82   1      0        180        1   193
#> [588,]  87   2      0          5        1   137
#> [589,]  86  12      1          0        1   132
#> [590,]  82  14      1         11        1   103
#> [591,]  84  16      0         70        1   150
#> [592,]  83  19      0         43        0   150
#> [593,]  84   3      1          2        0   125
#> [594,]  83  10      1          0        1   190
#> [595,]  86   2      0        180        1   169
#> [596,]  88  14      1          3        1   130
#> [597,]  83  13      1         12        0   170
#> [598,]  87   2      0        180        0   113
#> [599,]  84   9      0         92        1   110
#> [600,]  86   4      0         38        1   122
#> [601,]  82   4      0          4        0   130
#> [602,]  86  13      0        177        0   163
#> [603,]  85   3      0          3        1   113
#> [604,]  86   6      0          6        1   117
#> [605,]  84  13      0         62        1   100
#> [606,]  86   6      1          1        0   112
#> [607,]  88   4      0          4        0   100
#> [608,]  83  20      1          3        1   150
#> [609,]  88   4      0          4        1   115
#> [610,]  85  22      0         22        1   184
#> [611,]  83   9      0         65        1   150
#> [612,]  86   9      1          7        1   142
#> [613,]  87   2      0        180        1   130
#> [614,]  86   6      0         46        0   173
#> [615,]  88   3      0        115        0   110
#> [616,]  83   3      0          3        1   130
#> [617,]  87   8      0          8        1   157
#> [618,]  88   4      0          4        0    86
#> [619,]  89   4      0          4        1   153
#> [620,]  89   5      0        119        1   140
#> [621,]  87   6      0        180        1   110
#> [622,]  87   1      0          1        0   170
#> [623,]  84   8      0        180        1   119
#> [624,]  85   8      0          8        1   136
#> [625,]  84   2      0        110        1   174
#> [626,]  87  29      0         29        1    97
#> [627,]  87  15      1          9        1   138
#> [628,]  84   0      0        180        1   136
#> [629,]  90  14      0         14        1   100
#> [630,]  91   8      0          8        0   100
#> [631,]  87   6      1          0        0   125
#> [632,]  91  10      0        145        0   135
#> [633,]  86   3      1          0        1    80
#> [634,]  88   7      0         24        0   119
#> [635,]  88   8      0         50        1   154
#> [636,]  86  10      0        180        1   137
#> [637,]  90   4      1          0        0   121
#> [638,]  91   1      0          1        1    74
#> [639,]  90   5      1          0        1   125
#> [640,]  89   3      1          1        1   160
#> [641,]  91   3      0         33        1   137
#> [642,]  88   5      0        158        0   100
#> [643,]  87   7      0         74        1   105
#> [644,]  89  12      1          0        1   130
#> [645,]  89  52      0         52        1   130
#> [646,]  92   7      0          7        1   110
#> [647,]  89   4      0          4        1   159
#> [648,]  91   0      0          0        0     0
#> [649,]  89  14      0        180        1    84
#> [650,]  90  18      0        180        0   188
#> [651,]  91   4      1          0        1   120
#> [652,]  90  19      1         11        1   129
#> [653,]  94   6      0         50        0    78
#> [654,]  90   1      0          1        1   118
#> [655,]  91   2      0          2        1   116
#> [656,]  93   8      0        179        1   110
#> [657,]  92   4      0         76        1   149
#> [658,]  91   1      0        180        0   158
#> [659,]  90  16      0         16        1   106
#> [660,]  96   3      0         12        1    97
#> [661,]  95   8      1          5        1   150
#> [662,]  94   3      0         26        1   144
#> [663,]  91  12      0         53        1   212
#> [664,]  91   7      0          7        0   135
#> [665,]  93   0      1          0        1   122
#> [666,]  92   5      0         69        0   139
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+   2.0+   5.0+ 180.0+ 180.0+ 180.0+ 115.0  180.0+  12.0    5.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+   5.0+ 180.0+ 180.0+
#>  [21]   3.0  180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 161.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [51] 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+   1.0 
#>  [61] 179.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91]   4.0+  85.0  180.0+ 166.0+ 180.0+  16.0+ 152.0+   7.0+   6.0+ 180.0+
#> [101] 180.0+  13.0+ 171.0+ 180.0+ 180.0+  28.0    6.0+   1.0  180.0+ 180.0+
#> [111] 180.0+ 180.0+ 175.0+ 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121]  16.0   15.0+ 180.0+ 180.0+ 180.0+  12.0+ 134.0+ 180.0+   3.0+ 180.0+
#> [131] 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+   0.5 
#> [141] 180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+ 180.0+   4.0+
#> [151] 147.0+ 180.0+ 180.0+   4.0+ 180.0+   9.0+   1.0  180.0+   2.0+ 180.0+
#> [161] 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5 
#> [171] 171.0+ 180.0+   3.0    1.0   10.0+ 180.0+  17.0   45.0    3.0+  19.0 
#> [181]   9.0+ 180.0+ 172.0+  24.0  180.0+ 180.0+   1.0+  15.0  180.0+ 180.0+
#> [191]  77.0   13.0+   8.0+ 180.0+ 180.0+ 170.0  180.0+ 169.0    7.0    7.0+
#> [201]   6.0  180.0+ 180.0+   3.0+ 180.0+  30.0   28.0   13.0+   5.0   18.0 
#> [211]   5.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+ 180.0+   9.0    7.0+ 180.0+ 180.0+  84.0    7.0+ 180.0+   1.0 
#> [231] 180.0+ 167.0    6.0+ 180.0+  17.0   12.0  180.0+  36.0  180.0+  88.0 
#> [241] 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+
#> [251] 180.0+  12.0  180.0+   9.0    3.0  180.0+ 180.0+ 180.0+   2.0+  18.0+
#> [261] 180.0+ 180.0+ 180.0+   2.0+  15.0  180.0+ 180.0+  13.0  180.0+ 166.0+
#> [271]  14.0+   3.0  180.0+ 180.0+   7.0+ 180.0+   1.0  180.0+ 180.0+ 123.0+
#> [281]   1.0+  18.0   79.0   80.0   15.0+ 180.0+   4.0+ 180.0+ 180.0+ 174.0+
#> [291] 180.0+ 180.0+ 180.0+   8.0+ 175.0  180.0+  10.0  180.0+ 180.0+ 180.0+
#> [301] 180.0+  19.0+  12.0   99.0  180.0+ 179.0+ 180.0+ 180.0+  11.0+ 180.0+
#> [311]   0.5   18.0  180.0+ 180.0+ 152.0+ 180.0+ 101.0    4.0    5.0    7.0+
#> [321] 150.0  180.0+ 180.0+ 180.0+ 171.0  180.0+   0.5  180.0+ 180.0+ 180.0+
#> [331]  14.0+   7.0+  45.0    5.0+ 103.0    3.0+ 180.0+   5.0+ 180.0+   7.0 
#> [341] 180.0+   2.0+  18.0  180.0+ 180.0+   7.0  180.0+   8.0+ 123.0  180.0+
#> [351]  19.0    1.0    1.0   60.0  180.0+ 180.0+ 162.0    7.0+   7.0+ 124.0 
#> [361]   9.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0   76.0  180.0+ 173.0+
#> [371] 180.0+ 180.0+  28.0  180.0+ 180.0+ 180.0+   7.0+  15.0    3.0+ 180.0+
#> [381] 180.0+   3.0+ 180.0+ 180.0+  20.0    0.5  180.0+ 180.0+ 180.0+   3.0 
#> [391]  87.0   12.0  180.0+   4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [401] 180.0+   3.0  180.0+ 180.0+ 180.0+  10.0+ 180.0+ 179.0+   1.0  180.0+
#> [411] 180.0+ 159.0    1.0   13.0  180.0+   4.0+ 104.0+  11.0  180.0+  12.0 
#> [421] 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+   5.0   11.0+   4.0+ 180.0+
#> [431]  15.0+ 180.0+  10.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  17.0+
#> [441] 180.0+ 174.0+   7.0  180.0+ 180.0+   4.0    1.0   52.0  180.0+ 180.0+
#> [451] 180.0+ 180.0+ 180.0+  33.0  180.0+   1.0   12.0    7.0+  79.0    3.0 
#> [461] 180.0+ 176.0+  18.0  180.0+  47.0  180.0+  11.0  180.0+   7.0  180.0+
#> [471]   8.0+   7.0  180.0+  32.0  180.0+ 180.0+ 172.0   12.0  180.0+   8.0 
#> [481] 180.0+   1.0   80.0  180.0+   2.0  180.0+  11.0    3.0   23.0    6.0 
#> [491]   3.0+ 180.0+ 180.0+ 180.0+   1.0    4.0   10.0+ 180.0+   3.0+   2.0+
#> [501] 180.0+   1.0  171.0   43.0  180.0+ 180.0+ 180.0+   8.0   40.0   17.0 
#> [511] 161.0  180.0+  93.0  164.0  118.0  173.0  180.0+  37.0  175.0+  15.0+
#> [521] 180.0+ 171.0+  71.0    1.0   10.0    6.0+   6.0  180.0+ 180.0+ 180.0+
#> [531] 108.0  180.0+ 125.0  180.0+ 180.0+   4.0    6.0    9.0+ 180.0+ 180.0+
#> [541] 177.0+ 169.0   70.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  20.0    8.0+
#> [551]  16.0  180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+   2.0  167.0    3.0+
#> [561]  62.0  180.0+   1.0   90.0  180.0+ 180.0+ 180.0+  89.0  180.0+   4.0 
#> [571]   1.0   30.0  180.0+ 180.0+ 180.0+   2.0  180.0+   4.0+  12.0   16.0+
#> [581]   5.0+ 126.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 174.0 
#> [591]  70.0   43.0  180.0+ 180.0+ 180.0+  14.0   13.0  180.0+  92.0   38.0 
#> [601]   4.0  177.0    3.0+   6.0+  62.0    6.0+   4.0+  20.0    4.0   22.0 
#> [611]  65.0   11.0  180.0+  46.0  115.0    3.0+   8.0+   4.0    4.0  119.0 
#> [621] 180.0+   1.0+ 180.0+   8.0  110.0   29.0  180.0+ 180.0+  14.0    8.0 
#> [631]  25.0  145.0    3.0   24.0   50.0  180.0+   4.0    1.0   89.0    3.0+
#> [641]  33.0  158.0   74.0  180.0+  52.0    7.0    4.0    0.5  180.0+ 180.0+
#> [651]   4.0  180.0+  50.0    1.0+   2.0  179.0+  76.0  180.0+  16.0   12.0 
#> [661]   8.0   26.0   53.0    7.0+   0.5   69.0    2.0  180.0+   3.0   15.0+
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
#>   0.8469504 
```
