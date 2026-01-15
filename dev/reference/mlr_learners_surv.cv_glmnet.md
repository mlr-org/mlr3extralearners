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
#> min 0.00338    45   2.775 0.1392       6
#> 1se 0.06636    13   2.912 0.1354       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35   2      0        180        0   121
#>   [5,]  35   2      1          1        1   112
#>   [6,]  38  13      1          0        1   161
#>   [7,]  38   2      0        115        0   150
#>   [8,]  36   1      0        180        1   155
#>   [9,]  35   0      0        180        1   119
#>  [10,]  38  12      1          8        1   120
#>  [11,]  36   5      1          0        1   115
#>  [12,]  33   6      1          1        1   115
#>  [13,]  38  12      1         11        1    92
#>  [14,]  40  12      1          9        0   153
#>  [15,]  42   3      1          1        1   130
#>  [16,]  37   1      1          0        1   146
#>  [17,]  42   2      0        180        1   100
#>  [18,]  38   5      1          3        0   125
#>  [19,]  42   2      0          2        0   140
#>  [20,]  40   6      0        180        1   138
#>  [21,]  43   3      1          0        1   100
#>  [22,]  40   1      1          0        1   145
#>  [23,]  43   4      1          0        1   130
#>  [24,]  42   4      0        180        0   162
#>  [25,]  40   3      1          1        0   170
#>  [26,]  42  12      1         10        1   170
#>  [27,]  43   2      1          1        1   116
#>  [28,]  42   2      0        180        1   124
#>  [29,]  44   5      1          1        0   170
#>  [30,]  41  10      1          8        0   150
#>  [31,]  44   3      0        180        0   141
#>  [32,]  41  13      1          1        0   140
#>  [33,]  45   6      0        180        1   170
#>  [34,]  44   2      1          1        1   150
#>  [35,]  43   2      0        180        1   140
#>  [36,]  45   2      0        180        1   140
#>  [37,]  46   2      1          1        0   126
#>  [38,]  47   4      1          3        0   118
#>  [39,]  48  15      0        180        1   160
#>  [40,]  43  29      0        180        1   180
#>  [41,]  43  10      0        180        0   185
#>  [42,]  47   6      1          0        1   116
#>  [43,]  46  13      1         10        0   100
#>  [44,]  47   4      1          3        1   160
#>  [45,]  45   8      1          0        1   117
#>  [46,]  49   5      0         73        1   136
#>  [47,]  45   5      0          5        0   141
#>  [48,]  46   2      1          1        1   122
#>  [49,]  46   6      1          0        1   100
#>  [50,]  44   4      1          0        1   114
#>  [51,]  47   2      0        180        0   108
#>  [52,]  46   5      1          3        0   130
#>  [53,]  46   4      0        180        1   121
#>  [54,]  45   9      1          0        1   145
#>  [55,]  47   3      1          1        1   120
#>  [56,]  48   3      0        180        0   154
#>  [57,]  48  12      1         11        0   200
#>  [58,]  47   5      1          3        1   130
#>  [59,]  47   9      1          6        0   170
#>  [60,]  46   3      1          0        1   119
#>  [61,]  50   1      1          0        1   129
#>  [62,]  48   2      1          0        0   184
#>  [63,]  47   7      0        180        0   145
#>  [64,]  50   4      1          1        0   125
#>  [65,]  49   7      1          7        1   110
#>  [66,]  46   3      1          1        1   140
#>  [67,]  50   7      0        180        1   110
#>  [68,]  49   2      0          2        0   105
#>  [69,]  49  15      1         11        1   160
#>  [70,]  47   2      0        180        0   150
#>  [71,]  52   2      0        180        1   170
#>  [72,]  50   7      1          0        1    92
#>  [73,]  50   4      0          4        1   100
#>  [74,]  51   3      1          2        0   113
#>  [75,]  50   1      1          0        0   150
#>  [76,]  50   9      0        180        0   130
#>  [77,]  49   7      1          4        1    90
#>  [78,]  47   6      0        180        1   162
#>  [79,]  51   8      0        180        1   140
#>  [80,]  46   3      0        180        1   120
#>  [81,]  46   1      1          1        0   145
#>  [82,]  48   7      1          0        1   110
#>  [83,]  53   8      0         36        1   160
#>  [84,]  48  17      1         10        0   111
#>  [85,]  52   4      1          4        0   152
#>  [86,]  49   9      1          3        0   102
#>  [87,]  54  17      1         12        1   102
#>  [88,]  50  10      1          6        0   122
#>  [89,]  50  14      1         13        0   170
#>  [90,]  53   8      1          7        0   160
#>  [91,]  51  25      1          1        0   202
#>  [92,]  49   5      1          2        1   150
#>  [93,]  53   4      0          4        0   140
#>  [94,]  52  14      1          7        1   200
#>  [95,]  48   6      0        180        0   160
#>  [96,]  48  11      1         10        0   120
#>  [97,]  54   9      1          0        1   138
#>  [98,]  49  16      0         16        0   125
#>  [99,]  55   3      1          1        0   150
#> [100,]  52   7      1          2        0   154
#> [101,]  54   9      1          1        0   130
#> [102,]  55   4      1          2        0   150
#> [103,]  52   4      0        180        1   180
#> [104,]  51  13      1         11        0   145
#> [105,]  54   4      1          0        1   121
#> [106,]  52   4      0        180        0   183
#> [107,]  55  28      1         13        1   160
#> [108,]  49   1      0          1        1   110
#> [109,]  50   7      1          1        0   156
#> [110,]  53   9      0          9        1    95
#> [111,]  53   8      1          0        1   130
#> [112,]  50   7      1          0        1   127
#> [113,]  56   4      1          1        1   130
#> [114,]  55   1      0        180        0   127
#> [115,]  55   2      0          2        0   145
#> [116,]  54   1      0        180        0   162
#> [117,]  54   7      1          0        1   100
#> [118,]  56   3      0        180        1   193
#> [119,]  56   2      0        180        0   132
#> [120,]  55   5      1          4        1   120
#> [121,]  52   8      0        180        0   119
#> [122,]  53  18      1          9        1   150
#> [123,]  55   6      0        180        0   170
#> [124,]  52  16      0         16        0   152
#> [125,]  53  10      1          9        0   172
#> [126,]  53  15      0         15        1    90
#> [127,]  53   4      0        180        1   150
#> [128,]  55   6      0        180        1   100
#> [129,]  55   6      1          5        1   138
#> [130,]  54  12      1          0        1   190
#> [131,]  55   2      0        134        1   140
#> [132,]  54   3      0        180        0   128
#> [133,]  56   3      0          8        1   139
#> [134,]  55   1      0          2        0   130
#> [135,]  57   3      0          3        0   120
#> [136,]  54   7      1          2        0   129
#> [137,]  54   2      1          1        0   135
#> [138,]  52   9      1          3        0   170
#> [139,]  54   2      1          1        1   176
#> [140,]  57   5      1          3        1   138
#> [141,]  57   1      0        180        1   156
#> [142,]  57   1      0          1        1   100
#> [143,]  52   2      0        180        0   140
#> [144,]  55  11      1          7        0   104
#> [145,]  56  14      1         11        0   130
#> [146,]  57  10      0        180        1   170
#> [147,]  58   8      0          8        1   130
#> [148,]  54   5      0        180        1   108
#> [149,]  55   3      1          1        1   156
#> [150,]  57   0      0          0        1   150
#> [151,]  53  21      1         13        1   130
#> [152,]  59   3      1          1        0   172
#> [153,]  57   4      0        180        1   119
#> [154,]  54  17      1          8        1   227
#> [155,]  55  13      0        166        1   140
#> [156,]  54  23      1          8        0   120
#> [157,]  53   4      0        147        1   145
#> [158,]  53   7      1          0        1   120
#> [159,]  57  11      1         10        1   129
#> [160,]  55   5      0          5        1   131
#> [161,]  54   7      1          0        1   141
#> [162,]  56   4      0          4        0   164
#> [163,]  58   9      1          0        1   180
#> [164,]  58   1      1          1        1   200
#> [165,]  55   5      1          0        0   140
#> [166,]  56   7      1          5        1   120
#> [167,]  55   2      0          2        0   106
#> [168,]  59   9      1          1        1   125
#> [169,]  57   1      0        180        0   148
#> [170,]  60  11      1          9        0   106
#> [171,]  59   3      0        180        0   120
#> [172,]  58   4      1          0        1   160
#> [173,]  57   2      0          2        1   120
#> [174,]  60   5      1          1        0   138
#> [175,]  58  11      1          9        1   124
#> [176,]  59   6      1          0        1   140
#> [177,]  58  26      1          0        1   189
#> [178,]  58   4      1          3        0   120
#> [179,]  60   0      1          0        1    80
#> [180,]  59   2      1          1        0   140
#> [181,]  58   8      0        161        1   140
#> [182,]  58  14      1          6        0   190
#> [183,]  61   4      1          3        0   151
#> [184,]  61   9      1          8        0   150
#> [185,]  61   3      1          2        1   102
#> [186,]  61  20      1         13        0   130
#> [187,]  57   2      1          0        1   116
#> [188,]  56  14      0         45        0   130
#> [189,]  57   3      1          2        0   120
#> [190,]  56  13      1          6        1   158
#> [191,]  59   9      1          0        1    80
#> [192,]  55   4      1          3        1   160
#> [193,]  58  11      0        172        1   135
#> [194,]  61   4      1          0        1   115
#> [195,]  59  11      1          8        1   190
#> [196,]  57  15      1         13        1   110
#> [197,]  59   5      1          2        0   182
#> [198,]  58   5      1          1        1   135
#> [199,]  59  10      0        180        0   160
#> [200,]  61   8      0         77        0   120
#> [201,]  61  13      0         13        0   210
#> [202,]  58   8      1          5        0   152
#> [203,]  62  10      1          0        1   153
#> [204,]  62   7      1          2        1   180
#> [205,]  58   8      1          3        1   150
#> [206,]  60   7      0          7        0   147
#> [207,]  62   4      1          0        0   160
#> [208,]  60  17      1          8        1   140
#> [209,]  58   3      1          0        1   146
#> [210,]  59   1      0        180        0   155
#> [211,]  59  16      1          9        1   133
#> [212,]  63   6      0         28        1   120
#> [213,]  61  13      0         13        0   120
#> [214,]  61   5      0          5        1   110
#> [215,]  58   7      0        180        1   150
#> [216,]  63   3      1          1        0   180
#> [217,]  63   1      0        180        1   130
#> [218,]  61   7      0        180        0   135
#> [219,]  62   3      0        180        1   105
#> [220,]  63   4      1          1        0   155
#> [221,]  60  18      1         13        0   132
#> [222,]  59   8      0        180        1   140
#> [223,]  58   9      1          9        0   110
#> [224,]  62   7      0          7        0   150
#> [225,]  59   1      0         22        1   162
#> [226,]  58   2      0        180        0   127
#> [227,]  59   4      0        180        0   196
#> [228,]  60   7      1          5        1   141
#> [229,]  59   5      1          1        0   148
#> [230,]  60   7      1          1        1    90
#> [231,]  63   1      0          1        0   162
#> [232,]  62   6      0        180        0   170
#> [233,]  59   4      0          4        0   149
#> [234,]  60   3      0          3        0   168
#> [235,]  62   6      0          6        0   120
#> [236,]  60   8      0         17        1   130
#> [237,]  61   6      1          1        1   117
#> [238,]  64  12      1         11        0   160
#> [239,]  64   6      1          0        1   140
#> [240,]  63  10      1          0        1   148
#> [241,]  63   4      1          3        0   162
#> [242,]  61  10      1          2        1   194
#> [243,]  64  32      1          9        1   160
#> [244,]  66   5      1          0        1   110
#> [245,]  65   8      1          0        0   168
#> [246,]  65  10      1          8        1   120
#> [247,]  64   0      0          0        1    90
#> [248,]  60   6      0        180        0   130
#> [249,]  64  21      1         10        0   190
#> [250,]  61  12      1         11        0   154
#> [251,]  61   4      0        180        1   113
#> [252,]  65   3      0        180        1   190
#> [253,]  63  16      1          7        1   110
#> [254,]  64   7      0        180        1   120
#> [255,]  62   3      1          1        1   199
#> [256,]  65   6      0          9        0   112
#> [257,]  65   3      1          0        1    80
#> [258,]  63   5      1          4        0   170
#> [259,]  63   2      1          1        0   180
#> [260,]  62  13      1         11        0   180
#> [261,]  67  11      0         11        1   100
#> [262,]  64   2      0          2        0   201
#> [263,]  66  18      1          5        0   142
#> [264,]  66  16      1         11        1   169
#> [265,]  61  14      1          5        0   140
#> [266,]  63   9      1          8        1   160
#> [267,]  63   2      1          0        0   140
#> [268,]  64  19      1          8        1   160
#> [269,]  65   8      1          0        1   140
#> [270,]  67   6      0        180        1   170
#> [271,]  65  15      1         11        1   160
#> [272,]  68   5      1          4        1   150
#> [273,]  64  13      1         12        1   150
#> [274,]  64   6      1          0        1   125
#> [275,]  66   7      1          0        1   115
#> [276,]  66  13      1          0        0   118
#> [277,]  65   3      0          3        0   105
#> [278,]  64   0      0          0        1   148
#> [279,]  67   4      1          3        0   130
#> [280,]  66   6      1          0        1   140
#> [281,]  65   2      1          1        1   170
#> [282,]  64  10      1          9        1   110
#> [283,]  67   8      1          1        1   130
#> [284,]  63  10      0         16        1   160
#> [285,]  64   1      0          1        1   120
#> [286,]  68  18      0        180        1   260
#> [287,]  65  17      1         14        1   100
#> [288,]  63   8      1          1        1   162
#> [289,]  65  18      1          3        0   120
#> [290,]  63   1      1          0        1   155
#> [291,]  63  10      0         18        1   130
#> [292,]  67  11      0         11        0   150
#> [293,]  68  11      0        180        0   160
#> [294,]  68  14      0         79        0   172
#> [295,]  66  12      1         10        1   150
#> [296,]  65  15      1         12        1   150
#> [297,]  65   4      1          2        1   145
#> [298,]  63   2      0        180        0   150
#> [299,]  69   6      0        180        1   100
#> [300,]  63   8      0        180        1   120
#> [301,]  68  14      1         13        1   140
#> [302,]  66   3      0          3        1   138
#> [303,]  69   1      1          0        0   170
#> [304,]  67   1      0        180        1   160
#> [305,]  67   7      1          4        1   130
#> [306,]  63   2      1          0        0    99
#> [307,]  67   2      0        180        0   184
#> [308,]  66  19      1         12        1   150
#> [309,]  69   6      0         99        1   140
#> [310,]  64   4      0        179        0   160
#> [311,]  66   4      0        180        1   130
#> [312,]  70  15      1         12        1   132
#> [313,]  64  11      0         11        0   125
#> [314,]  67   2      0         18        0   131
#> [315,]  66   4      0        180        0   177
#> [316,]  68   4      1          0        1   160
#> [317,]  69   8      0         93        0   140
#> [318,]  64  21      0         21        1   155
#> [319,]  68  18      1          0        1   160
#> [320,]  65   6      0        101        1   115
#> [321,]  71   3      0          5        0   112
#> [322,]  70   7      1          0        1   190
#> [323,]  71  20      1          0        1   160
#> [324,]  67   2      0        180        0   128
#> [325,]  66   1      1          1        1   165
#> [326,]  69   8      0        180        1   153
#> [327,]  70  14      0        171        0   166
#> [328,]  66   4      0        180        0   130
#> [329,]  67  10      1          9        0   200
#> [330,]  68  18      1         14        1   170
#> [331,]  69   0      0          0        1   148
#> [332,]  65   2      0        180        0   130
#> [333,]  68   7      1          0        1   150
#> [334,]  67  14      1         13        0   130
#> [335,]  69   8      0        180        1   180
#> [336,]  71   7      0          7        0   230
#> [337,]  66   2      0          2        1   228
#> [338,]  71   6      0         45        1   158
#> [339,]  69   5      0          5        1   142
#> [340,]  71   3      0        103        0   133
#> [341,]  69   3      0          3        1   130
#> [342,]  70  22      1         13        0   103
#> [343,]  67   5      0          5        0   130
#> [344,]  68   6      0        180        0   145
#> [345,]  69   8      1          5        1   195
#> [346,]  69   6      1          4        1   174
#> [347,]  72   3      1          0        1   132
#> [348,]  72   7      0          7        1   110
#> [349,]  67   3      0        180        0   110
#> [350,]  69  19      0        180        0   130
#> [351,]  68  18      0         18        1   100
#> [352,]  67  14      0        172        1   140
#> [353,]  69  11      1          0        1   120
#> [354,]  66   2      0        180        0   130
#> [355,]  67   7      1          4        0   122
#> [356,]  68   2      0          7        1   130
#> [357,]  69   8      1          2        0   121
#> [358,]  70   9      0        180        1   142
#> [359,]  72   5      1          4        0   170
#> [360,]  68   3      0         19        0   135
#> [361,]  67  12      1          8        0   120
#> [362,]  67   1      0          1        1    60
#> [363,]  67   8      1          0        1   130
#> [364,]  72  13      1         11        1   195
#> [365,]  66  24      1         13        0   130
#> [366,]  70  35      1          0        1   105
#> [367,]  72  30      1          0        1   145
#> [368,]  68   7      1          2        0   135
#> [369,]  73  20      1          0        1   170
#> [370,]  70  11      0        180        1   210
#> [371,]  72  19      1          8        0   120
#> [372,]  72  12      1         10        0   170
#> [373,]  67   8      0        180        1   170
#> [374,]  67   9      0        180        0   158
#> [375,]  73  13      0        152        1   130
#> [376,]  72   2      0          2        1   100
#> [377,]  72   6      1          5        0   115
#> [378,]  71   1      0        173        1   188
#> [379,]  68  23      0        180        1   220
#> [380,]  70   3      0        180        0   121
#> [381,]  69   3      0        180        0   220
#> [382,]  69  16      1         10        1   140
#> [383,]  69   8      1          1        0   164
#> [384,]  69   1      1          0        0   155
#> [385,]  72   8      1          1        1   150
#> [386,]  70   3      0          3        1   159
#> [387,]  72   6      0        180        1   130
#> [388,]  73   0      0        180        1   161
#> [389,]  71   3      1          1        0   150
#> [390,]  74  20      0         20        1   180
#> [391,]  68   9      0        180        1   120
#> [392,]  71  20      1         10        0   140
#> [393,]  74   0      1          0        1    90
#> [394,]  70   5      1          0        1   190
#> [395,]  71  17      1         11        0   160
#> [396,]  71   8      1          7        0   149
#> [397,]  71   3      1          2        1   190
#> [398,]  73  10      1          8        0   106
#> [399,]  69  12      1          1        1   149
#> [400,]  70  26      1         11        1   120
#> [401,]  70   3      0        180        1   154
#> [402,]  71   7      1          2        0   143
#> [403,]  74   3      0          3        1   150
#> [404,]  73  17      1         11        0   140
#> [405,]  70   4      1          0        1   140
#> [406,]  74   7      1          0        1   117
#> [407,]  72  10      1          8        1   153
#> [408,]  70   8      0          8        0   120
#> [409,]  75   2      1          1        0   145
#> [410,]  73  10      1          9        1   146
#> [411,]  72  10      1          9        1   160
#> [412,]  73  10      1         10        1   120
#> [413,]  75   9      1          7        0   140
#> [414,]  73  10      1          8        0   120
#> [415,]  70   7      1          4        0   184
#> [416,]  72   1      1          1        0   168
#> [417,]  72   7      0         57        1   145
#> [418,]  72  11      0         11        1   140
#> [419,]  70   3      0          3        0   150
#> [420,]  76  25      1         12        1   170
#> [421,]  72   2      0        180        0   120
#> [422,]  73   4      0        180        0   124
#> [423,]  74  34      1          8        1   233
#> [424,]  71  32      1         12        1   107
#> [425,]  72   5      0        180        0   154
#> [426,]  72   3      0        180        0   160
#> [427,]  77  11      0         11        1   150
#> [428,]  77   4      0          4        0   185
#> [429,]  75   3      1          1        0   180
#> [430,]  72   7      1          2        0   142
#> [431,]  73  15      0         15        1   160
#> [432,]  71  16      0        180        0   140
#> [433,]  74   7      0        180        1   150
#> [434,]  76   1      0        180        0   114
#> [435,]  74   2      1          1        0   140
#> [436,]  76   8      1          0        1   141
#> [437,]  74  19      1          4        1   200
#> [438,]  75  23      1         14        1   110
#> [439,]  72   4      0         85        1   120
#> [440,]  72   4      1          3        0   160
#> [441,]  73   4      1          3        1   125
#> [442,]  76  13      1         10        0   110
#> [443,]  73  13      1         11        0   195
#> [444,]  75  12      0         12        1   160
#> [445,]  76  13      1          8        1   148
#> [446,]  75   4      1          2        1   188
#> [447,]  76   4      0          4        1   155
#> [448,]  75   1      0          1        1   125
#> [449,]  73   1      0         52        1   105
#> [450,]  73   0      0        180        0   156
#> [451,]  76   5      0        180        0   185
#> [452,]  74  10      1          0        1   135
#> [453,]  76   5      1          0        1   167
#> [454,]  74   8      1          8        1   170
#> [455,]  75   9      0        180        1   140
#> [456,]  77   5      1          0        0   123
#> [457,]  77  12      0        180        0   130
#> [458,]  78   5      1          0        1   170
#> [459,]  74   6      0         79        1   140
#> [460,]  75   3      1          1        1   171
#> [461,]  75   6      0        180        0   150
#> [462,]  79  10      1          8        0   190
#> [463,]  78  18      0         18        1   144
#> [464,]  76  29      0         47        0    90
#> [465,]  73   8      1          1        1   162
#> [466,]  73  11      1          2        1   110
#> [467,]  74   2      0        180        0   100
#> [468,]  74  15      0        180        1   172
#> [469,]  78   8      1          6        1   110
#> [470,]  74   7      0          7        0   161
#> [471,]  80  10      1          6        1   147
#> [472,]  78   0      0        180        1   212
#> [473,]  78  13      1          5        0   130
#> [474,]  75   5      0        119        1   150
#> [475,]  75  12      1          1        1   120
#> [476,]  78  15      0        180        1   270
#> [477,]  80   8      0          8        1   120
#> [478,]  75  13      1          6        0   150
#> [479,]  74  10      1          8        0   135
#> [480,]  76   1      0          1        1    83
#> [481,]  78  12      1          9        0   150
#> [482,]  78   2      1          1        0   130
#> [483,]  75   4      1          0        0   212
#> [484,]  77   2      1          0        1   143
#> [485,]  78  10      0        180        1   130
#> [486,]  75  11      1          4        0   162
#> [487,]  75   3      0          3        0     0
#> [488,]  76   7      0         29        1   150
#> [489,]  77  24      0         24        1   160
#> [490,]  79   8      0         32        1   120
#> [491,]  80   9      0         23        1   128
#> [492,]  80   6      0          6        1   150
#> [493,]  78   6      1          0        1   240
#> [494,]  78  11      1          1        1   140
#> [495,]  79  11      0        180        0   160
#> [496,]  79   2      1          0        1   121
#> [497,]  78  14      1          0        1   140
#> [498,]  81   1      0          1        0   130
#> [499,]  78  11      1          8        1   118
#> [500,]  76   4      0          4        1   160
#> [501,]  76  10      1          8        0   180
#> [502,]  76  12      1         10        1   127
#> [503,]  80   3      1          0        1   120
#> [504,]  75   2      1          1        1   204
#> [505,]  78  11      0        180        1   135
#> [506,]  77  31      1          3        1   161
#> [507,]  78   7      1          0        1   110
#> [508,]  79   3      0          3        0   120
#> [509,]  77   7      0        180        1   170
#> [510,]  77   6      0          6        1   144
#> [511,]  81   1      0        180        0   120
#> [512,]  77   9      1          4        0   141
#> [513,]  80  40      1          0        1   138
#> [514,]  78   4      0         59        1   112
#> [515,]  80  17      1         12        0   100
#> [516,]  76   7      0        161        0   151
#> [517,]  79  10      0         10        1   120
#> [518,]  80   6      0        173        1   160
#> [519,]  81   3      0        180        0   184
#> [520,]  81   2      0        175        0   172
#> [521,]  77  13      1          0        1   190
#> [522,]  78  15      0         15        0   165
#> [523,]  78   4      0        180        0   175
#> [524,]  79   3      0          3        1   101
#> [525,]  78  26      1          5        0   194
#> [526,]  76   1      0        166        0   131
#> [527,]  81   4      1          1        1   104
#> [528,]  78  20      1          0        1   109
#> [529,]  80   1      0          1        0   100
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
#> [540,]  81   1      0        108        0   129
#> [541,]  79   1      0        125        0   193
#> [542,]  82  21      1          2        0   155
#> [543,]  84  22      1         10        0   180
#> [544,]  80   6      0          6        1   110
#> [545,]  82   5      0        180        0   110
#> [546,]  81  11      1          8        0   160
#> [547,]  81   5      0        177        0    41
#> [548,]  80  11      1          8        0   170
#> [549,]  78  23      1         10        1   145
#> [550,]  79   4      0          4        1   183
#> [551,]  78   9      1          4        1   120
#> [552,]  79   1      0        180        1   170
#> [553,]  80   7      1          0        1   146
#> [554,]  81  20      1          9        0   170
#> [555,]  83   8      0          8        0   115
#> [556,]  80   6      1          0        1   150
#> [557,]  80  11      1          8        0   110
#> [558,]  80   8      1          7        0   160
#> [559,]  85   4      0        180        0    90
#> [560,]  81   2      1          1        0   198
#> [561,]  83   2      0          2        1   155
#> [562,]  82   6      0        128        1   100
#> [563,]  84   4      0        167        0   198
#> [564,]  81   1      0          1        1   150
#> [565,]  84   1      0         38        1   205
#> [566,]  81   4      0         90        1   138
#> [567,]  79   9      1          8        0   150
#> [568,]  80  13      1          8        1   140
#> [569,]  84   4      0         89        1   129
#> [570,]  80   6      0         71        1   189
#> [571,]  83   9      0        180        0   198
#> [572,]  83   3      0        114        0    98
#> [573,]  83   2      0        154        0   130
#> [574,]  82   0      0          2        1   100
#> [575,]  81   4      0          4        0   175
#> [576,]  84  15      1         13        1   110
#> [577,]  81   1      0          1        1   145
#> [578,]  81  12      0         12        1   163
#> [579,]  82   5      1          0        1   146
#> [580,]  81   4      0          4        0   160
#> [581,]  83  12      1          2        1   170
#> [582,]  80   2      0         88        0   135
#> [583,]  83   7      0        126        0   135
#> [584,]  86   8      0          8        1   132
#> [585,]  81  16      1          9        0   180
#> [586,]  84   6      0        165        0   145
#> [587,]  86   3      0          3        1   140
#> [588,]  82   9      0        180        1   134
#> [589,]  81  13      0        180        0   152
#> [590,]  85   3      0          3        1   118
#> [591,]  81   2      1          0        1   118
#> [592,]  81   4      0        180        0   160
#> [593,]  83   9      0        180        1   149
#> [594,]  82   1      0        180        1   193
#> [595,]  87   2      0          5        1   137
#> [596,]  86  12      1          0        1   132
#> [597,]  82  14      1         11        1   103
#> [598,]  86   6      1          0        1   140
#> [599,]  84  16      0         70        1   150
#> [600,]  84   3      1          2        0   125
#> [601,]  83  10      1          0        1   190
#> [602,]  86   2      0        180        1   169
#> [603,]  88  14      1          3        1   130
#> [604,]  84   3      0          3        1   121
#> [605,]  83  13      1         12        0   170
#> [606,]  84   7      1          2        0   148
#> [607,]  87   2      0        180        0   113
#> [608,]  84   9      0         92        1   110
#> [609,]  84   3      0        180        1   170
#> [610,]  86  13      0        177        0   163
#> [611,]  85   3      0          3        1   113
#> [612,]  84  13      0         62        1   100
#> [613,]  88   4      0          4        1   115
#> [614,]  85  22      0         22        1   184
#> [615,]  83   9      0         65        1   150
#> [616,]  86   9      1          7        1   142
#> [617,]  87   2      0        180        1   130
#> [618,]  86   6      0         46        0   173
#> [619,]  88   2      0        180        1    68
#> [620,]  83   3      0          3        1   130
#> [621,]  87   8      0          8        1   157
#> [622,]  88   4      0          4        0    86
#> [623,]  89   4      0          4        1   153
#> [624,]  89   5      0        119        1   140
#> [625,]  87   6      0        180        1   110
#> [626,]  84   8      0        180        1   119
#> [627,]  85   8      0          8        1   136
#> [628,]  84   2      0        110        1   174
#> [629,]  87  29      0         29        1    97
#> [630,]  87  15      1          9        1   138
#> [631,]  84   0      0        180        1   136
#> [632,]  89  10      0         46        1   170
#> [633,]  90  14      0         14        1   100
#> [634,]  87   2      0        180        0   160
#> [635,]  87   6      1          0        0   125
#> [636,]  86   3      1          0        1    80
#> [637,]  88   7      0         24        0   119
#> [638,]  90  11      1         10        1   186
#> [639,]  90   4      1          0        0   121
#> [640,]  91   1      0          1        1    74
#> [641,]  87  43      0        178        1   130
#> [642,]  90   5      1          0        1   125
#> [643,]  88   3      1          2        0   159
#> [644,]  89   3      1          1        1   160
#> [645,]  92   1      0          1        1   167
#> [646,]  91   3      0         33        1   137
#> [647,]  88   5      0        158        0   100
#> [648,]  89  12      1          0        1   130
#> [649,]  91   5      0        169        1   176
#> [650,]  89  52      0         52        1   130
#> [651,]  92   7      0          7        1   110
#> [652,]  89   4      0          4        1   159
#> [653,]  89  14      0        180        1    84
#> [654,]  90  18      0        180        0   188
#> [655,]  91   4      1          0        1   120
#> [656,]  90  19      1         11        1   129
#> [657,]  94   6      0         50        0    78
#> [658,]  90   1      0          1        1   118
#> [659,]  91   2      0          2        1   116
#> [660,]  94   8      0          8        1   142
#> [661,]  92   4      0         76        1   149
#> [662,]  91   1      0        180        0   158
#> [663,]  90  16      0         16        1   106
#> [664,]  90   3      0         67        0   162
#> [665,]  96   3      0         12        1    97
#> [666,]  94   3      0         26        1   144
#> [667,]  92   5      0         69        0   139
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   2.0+   5.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+ 180.0+  12.0 
#>  [11]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+   2.0+ 180.0+
#>  [21]   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+   6.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 161.0+ 180.0+ 180.0+
#>  [51] 180.0+   5.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61] 172.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+   2.0  179.0+ 180.0+
#>  [71] 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+   7.0   36.0   88.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+   4.0+  85.0  180.0+ 180.0+ 180.0+  16.0+ 180.0+   7.0+
#> [101] 180.0+ 180.0+ 180.0+  13.0+ 180.0+ 180.0+  28.0    1.0  180.0+   9.0+
#> [111] 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+ 180.0+  16.0+ 180.0+  15.0+ 180.0+ 180.0+ 180.0+  12.0+
#> [131] 134.0+ 180.0+   8.0    2.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+ 140.0 
#> [141] 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+   0.5 
#> [151] 180.0+ 180.0+ 180.0+ 171.0+ 166.0+ 180.0+ 147.0+ 180.0+ 180.0+   5.0+
#> [161] 180.0+   4.0+   9.0+   1.0  180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#> [171] 180.0+ 180.0+   2.0  180.0+ 180.0+  64.0  180.0+ 180.0+   0.5  180.0+
#> [181] 161.0+ 171.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+  45.0    3.0+ 180.0+
#> [191]   9.0+ 180.0+ 172.0+ 180.0+ 180.0+  15.0  180.0+ 180.0+ 180.0+  77.0 
#> [201]  13.0+   8.0+ 180.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+   3.0+ 180.0+
#> [211] 180.0+  28.0   13.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [221] 180.0+ 180.0+   9.0    7.0+  22.0  180.0+ 180.0+  84.0  180.0+ 180.0+
#> [231]   1.0  180.0+   4.0+   3.0+   6.0+  17.0  180.0+  12.0  180.0+ 180.0+
#> [241] 180.0+  88.0  180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+  12.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0    3.0  180.0+ 180.0+ 180.0+
#> [261]  11.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+   2.0+ 103.0   15.0  180.0+
#> [271] 180.0+   5.0+  13.0  180.0+ 179.0+ 166.0+   3.0    0.5+ 180.0+ 180.0+
#> [281] 175.0+ 180.0+   8.0   16.0    1.0  180.0+ 180.0+ 180.0+ 123.0+   1.0+
#> [291]  18.0   11.0+ 180.0+  79.0   80.0   15.0+   4.0+ 180.0+ 180.0+ 180.0+
#> [301] 180.0+   3.0  175.0  180.0+ 180.0+ 180.0+ 180.0+  19.0+  99.0  179.0+
#> [311] 180.0+ 180.0+  11.0+  18.0  180.0+ 180.0+  93.0   21.0+  18.0+ 101.0 
#> [321]   5.0    7.0+ 180.0+ 180.0+   1.0  180.0+ 171.0  180.0+ 174.0+ 180.0+
#> [331]   0.5  180.0+ 180.0+ 180.0+ 180.0+   7.0+   2.0   45.0    5.0+ 103.0 
#> [341]   3.0+ 180.0+   5.0+ 180.0+ 180.0+  97.0  180.0+   7.0  180.0+ 180.0+
#> [351]  18.0  172.0+ 180.0+ 180.0+   7.0    7.0    8.0+ 180.0+ 180.0+  19.0 
#> [361] 180.0+   1.0  180.0+ 132.0  180.0+ 180.0+ 162.0    7.0+ 124.0  180.0+
#> [371] 180.0+  12.0  180.0+ 180.0+ 152.0    2.0  180.0+ 173.0+ 180.0+ 180.0+
#> [381] 180.0+  16.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+   3.0+  20.0 
#> [391] 180.0+  20.0    0.5  180.0+ 180.0+   8.0    3.0   87.0   12.0  180.0+
#> [401] 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+  10.0+   8.0+ 180.0+ 180.0+
#> [411] 159.0   15.0  180.0+  10.0  104.0+   1.0   57.0   11.0    3.0+ 180.0+
#> [421] 180.0+ 180.0+  34.0  177.0+ 180.0+ 180.0+  11.0+   4.0+ 180.0+   7.0 
#> [431]  15.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+
#> [441] 180.0+ 174.0+ 180.0+  12.0  180.0+  46.0    4.0    1.0   52.0  180.0+
#> [451] 180.0+ 180.0+ 180.0+   8.0  180.0+   5.0  180.0+ 180.0+  79.0    3.0 
#> [461] 180.0+ 180.0+  18.0   47.0  180.0+  11.0  180.0+ 180.0+   8.0+   7.0 
#> [471]  10.0  180.0+ 172.0  119.0   12.0  180.0+   8.0  180.0+ 180.0+   1.0 
#> [481] 180.0+ 180.0+   4.0+   2.0  180.0+ 152.0+   3.0   29.0   24.0   32.0 
#> [491]  23.0    6.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0   11.0    4.0 
#> [501]  10.0+ 180.0+   3.0+   2.0+ 180.0+ 171.0   43.0    3.0  180.0+   6.0 
#> [511] 180.0+  71.0   40.0   59.0   17.0  161.0   10.0+ 173.0  180.0+ 175.0+
#> [521]  22.0   15.0+ 180.0+   3.0  171.0+ 166.0+  71.0   20.0+   1.0   10.0 
#> [531]  85.0   10.0    6.0+   6.0  180.0+   5.0    1.0  180.0+ 180.0+ 108.0 
#> [541] 125.0  180.0+ 180.0+   6.0  180.0+ 180.0+ 177.0+ 169.0   70.0    4.0 
#> [551] 180.0+ 180.0+   7.0+  20.0    8.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [561]   2.0  128.0  167.0    1.0   38.0   90.0  180.0+ 180.0+  89.0   71.0 
#> [571] 180.0+ 114.0  154.0    2.0    4.0+ 180.0+   1.0   12.0    5.0+   4.0+
#> [581]  77.0   88.0  126.0    8.0  180.0+ 165.0    3.0  180.0+ 180.0+   3.0+
#> [591] 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 174.0    6.0   70.0  180.0+
#> [601] 180.0+ 180.0+  14.0    3.0   13.0  180.0+ 180.0+  92.0  180.0+ 177.0 
#> [611]   3.0+  62.0    4.0   22.0   65.0   11.0  180.0+  46.0  180.0+   3.0+
#> [621]   8.0+   4.0    4.0  119.0  180.0+ 180.0+   8.0  110.0   29.0  180.0+
#> [631] 180.0+  46.0   14.0  180.0+  25.0    3.0   24.0   11.0    4.0    1.0 
#> [641] 178.0+  89.0   75.0    3.0+   1.0   33.0  158.0  180.0+ 169.0   52.0 
#> [651]   7.0    4.0  180.0+ 180.0+   4.0  180.0+  50.0    1.0+   2.0    8.0+
#> [661]  76.0  180.0+  16.0   67.0   12.0   26.0   69.0  180.0+   3.0   15.0+
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
#>    0.817418 
```
