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
#> min 0.00327    45   2.875 0.1876       6
#> 1se 0.07738    11   3.033 0.1750       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35  10      1          9        0   106
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38  13      1          0        1   161
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  36   5      1          0        1   115
#>  [12,]  33   6      1          1        1   115
#>  [13,]  40   2      1          1        1   148
#>  [14,]  42   2      0        180        1   100
#>  [15,]  38   5      1          3        0   125
#>  [16,]  42   2      0          2        0   140
#>  [17,]  42   2      0        180        0   100
#>  [18,]  40   1      1          0        1   145
#>  [19,]  43   4      1          0        1   130
#>  [20,]  42   4      0        180        0   162
#>  [21,]  42  15      1         13        1   125
#>  [22,]  40   3      1          1        0   170
#>  [23,]  43   2      1          1        1   116
#>  [24,]  42   2      0        180        1   124
#>  [25,]  44   5      1          1        0   170
#>  [26,]  45   3      0        180        1   154
#>  [27,]  44   3      0        180        0   141
#>  [28,]  45   9      1          7        0   110
#>  [29,]  41   5      1          4        1   141
#>  [30,]  44   2      1          1        1   150
#>  [31,]  46  15      0        180        0   120
#>  [32,]  46   2      1          1        0   126
#>  [33,]  47   4      1          3        0   118
#>  [34,]  48  15      0        180        1   160
#>  [35,]  45   3      0        150        0   130
#>  [36,]  44   3      1          0        1   180
#>  [37,]  43  29      0        180        1   180
#>  [38,]  45   4      1          0        0   124
#>  [39,]  43  10      0        180        0   185
#>  [40,]  47   6      1          0        1   116
#>  [41,]  46  13      1         10        0   100
#>  [42,]  44   0      1          0        1    96
#>  [43,]  47   4      1          3        1   160
#>  [44,]  43   3      1          0        1   124
#>  [45,]  45   8      1          0        1   117
#>  [46,]  49   5      0         73        1   136
#>  [47,]  45   5      0          5        0   141
#>  [48,]  46   6      1          0        1   100
#>  [49,]  44   4      1          0        1   114
#>  [50,]  44   9      1          8        1   135
#>  [51,]  45   5      0        180        1   190
#>  [52,]  46   5      1          3        0   130
#>  [53,]  46  15      0        180        1   120
#>  [54,]  45   9      1          0        1   145
#>  [55,]  48   3      0        180        0   154
#>  [56,]  48  12      1         11        0   200
#>  [57,]  47   5      1          3        1   130
#>  [58,]  49   4      0        180        0   117
#>  [59,]  50   1      1          0        1   129
#>  [60,]  47   7      0        180        0   145
#>  [61,]  50   4      1          1        0   125
#>  [62,]  50   6      1          2        1   140
#>  [63,]  49   7      1          7        1   110
#>  [64,]  46   3      1          1        1   140
#>  [65,]  46   9      1          9        1   122
#>  [66,]  50   7      0        180        1   110
#>  [67,]  49   2      0          2        0   105
#>  [68,]  49  15      1         11        1   160
#>  [69,]  47   2      0        180        0   150
#>  [70,]  46   6      1          0        1   156
#>  [71,]  52   2      0        180        1   170
#>  [72,]  51   3      1          2        0   113
#>  [73,]  50   1      1          0        0   150
#>  [74,]  49   7      1          4        1    90
#>  [75,]  47   8      0        180        0   160
#>  [76,]  51   8      0        180        1   140
#>  [77,]  52   2      0        180        0   155
#>  [78,]  46   3      0        180        1   120
#>  [79,]  46   1      1          1        0   145
#>  [80,]  48   7      1          0        1   110
#>  [81,]  53   8      0         36        1   160
#>  [82,]  48  17      1         10        0   111
#>  [83,]  49  15      0        180        1   160
#>  [84,]  53   5      0         77        0   159
#>  [85,]  51   3      1          1        0   140
#>  [86,]  50   2      0          5        1   106
#>  [87,]  50  10      1          6        0   122
#>  [88,]  50  14      1         13        0   170
#>  [89,]  53   8      1          7        0   160
#>  [90,]  48   3      1          2        0   150
#>  [91,]  51  25      1          1        0   202
#>  [92,]  49   5      1          2        1   150
#>  [93,]  53   4      0          4        0   140
#>  [94,]  48   6      0        180        0   160
#>  [95,]  53   4      1          0        1   156
#>  [96,]  51  13      0         99        1   160
#>  [97,]  52   7      1          2        0   154
#>  [98,]  55   6      1          2        1   114
#>  [99,]  55   4      1          2        0   150
#> [100,]  52   4      0        180        1   180
#> [101,]  50   5      1          4        1   150
#> [102,]  54   4      1          0        1   121
#> [103,]  52   4      0        180        0   183
#> [104,]  49   6      1          0        1   130
#> [105,]  50   7      1          1        0   156
#> [106,]  53   9      0          9        1    95
#> [107,]  53   8      1          0        1   130
#> [108,]  54   1      0        180        0   162
#> [109,]  56   3      0        180        1   193
#> [110,]  56   2      0        180        0   132
#> [111,]  55   5      1          4        1   120
#> [112,]  53  18      1          9        1   150
#> [113,]  54   3      0        180        1   180
#> [114,]  52  16      1         14        0   170
#> [115,]  53   4      0        180        1   150
#> [116,]  55   6      0        180        1   100
#> [117,]  55   6      1          5        1   138
#> [118,]  54   7      1          2        0   129
#> [119,]  54   2      1          1        1   176
#> [120,]  57   5      1          3        1   138
#> [121,]  57   1      0        180        1   156
#> [122,]  56   4      1          0        1   140
#> [123,]  52   2      0        180        0   140
#> [124,]  55  11      1          7        0   104
#> [125,]  52  15      1         14        0   130
#> [126,]  56  14      1         11        0   130
#> [127,]  57  10      0        180        1   170
#> [128,]  55   3      1          1        1   156
#> [129,]  53  21      1         13        1   130
#> [130,]  59   3      1          1        0   172
#> [131,]  57   4      0        180        1   119
#> [132,]  53  15      1         10        1   130
#> [133,]  55   9      1          2        1   147
#> [134,]  55  13      0        166        1   140
#> [135,]  56   5      0          5        1   150
#> [136,]  57   4      1          2        1   185
#> [137,]  53   4      0        147        1   145
#> [138,]  53   7      1          0        1   120
#> [139,]  55   3      1          2        0   140
#> [140,]  55   5      0          5        1   131
#> [141,]  54   7      1          0        1   141
#> [142,]  59  15      1         10        0   140
#> [143,]  58   9      1          0        1   180
#> [144,]  55   5      1          0        0   140
#> [145,]  55   2      0          2        0   106
#> [146,]  57   1      0        180        0   148
#> [147,]  58   4      1          0        1   160
#> [148,]  57   2      0          2        1   120
#> [149,]  60   5      1          1        0   138
#> [150,]  55   5      1          0        1   160
#> [151,]  57  10      1          9        0   103
#> [152,]  59   5      0        180        1   155
#> [153,]  59   4      1          0        1   152
#> [154,]  58  26      1          0        1   189
#> [155,]  60   0      1          0        1    80
#> [156,]  59   2      1          1        0   140
#> [157,]  61   9      1          8        0   150
#> [158,]  61   3      1          2        1   102
#> [159,]  61  20      1         13        0   130
#> [160,]  57  13      1         10        0   110
#> [161,]  57   2      1          0        1   116
#> [162,]  58  10      0         10        1   150
#> [163,]  57   4      1          3        0   138
#> [164,]  57  11      0        180        1   150
#> [165,]  57   3      1          2        0   120
#> [166,]  58  19      1         13        1   140
#> [167,]  56  13      1          6        1   158
#> [168,]  56  18      1         11        1   165
#> [169,]  55   4      1          3        1   160
#> [170,]  58  11      0        172        1   135
#> [171,]  60  12      1          0        1   114
#> [172,]  61   4      1          0        1   115
#> [173,]  61  13      1         12        1   130
#> [174,]  59  11      1          8        1   190
#> [175,]  57   1      0          1        0   126
#> [176,]  59  10      0        180        0   160
#> [177,]  61   8      0         77        0   120
#> [178,]  61  13      0         13        0   210
#> [179,]  58   8      1          5        0   152
#> [180,]  62  10      1          0        1   153
#> [181,]  62   7      1          2        1   180
#> [182,]  57   3      1          0        0   100
#> [183,]  61  18      0        170        0   140
#> [184,]  61  28      1          7        0   133
#> [185,]  61   7      0          7        1   150
#> [186,]  61   6      0          6        0   134
#> [187,]  59  13      1          2        0   198
#> [188,]  62   4      1          0        0   160
#> [189,]  60  17      1          8        1   140
#> [190,]  62   4      1          3        0   173
#> [191,]  59   1      0        180        0   155
#> [192,]  61  13      0         13        0   120
#> [193,]  61   5      0          5        1   110
#> [194,]  57  18      1          9        1    93
#> [195,]  58  11      1          9        0   179
#> [196,]  57   2      1          1        0   159
#> [197,]  62  17      1         10        1   180
#> [198,]  62   1      1          0        1   172
#> [199,]  63   3      1          1        0   180
#> [200,]  63   4      1          3        0   222
#> [201,]  63  15      1         10        1   126
#> [202,]  63   4      1          1        0   155
#> [203,]  61   9      1          9        1   150
#> [204,]  58   9      1          9        0   110
#> [205,]  62   7      0          7        0   150
#> [206,]  59   1      0         22        1   162
#> [207,]  58   2      0        180        0   127
#> [208,]  60   7      1          5        1   141
#> [209,]  60   7      1          1        1    90
#> [210,]  65  13      0        180        1   100
#> [211,]  63   1      0          1        0   130
#> [212,]  62   6      0        180        0   170
#> [213,]  59   4      0          4        0   149
#> [214,]  60   3      0          3        0   168
#> [215,]  62   6      0          6        0   120
#> [216,]  63  12      1         10        0   200
#> [217,]  59  10      0        180        1   130
#> [218,]  60   8      0         17        1   130
#> [219,]  64   6      1          0        1   140
#> [220,]  66   3      1          1        0   127
#> [221,]  61  10      1          2        1   194
#> [222,]  64  32      1          9        1   160
#> [223,]  63  12      1          9        0   114
#> [224,]  66   5      1          0        1   110
#> [225,]  60   6      0        180        0   130
#> [226,]  64  21      1         10        0   190
#> [227,]  61  12      1         11        0   154
#> [228,]  64   9      0        180        0   150
#> [229,]  63  16      1          7        1   110
#> [230,]  66   6      1          1        1   130
#> [231,]  63  12      0         12        1   150
#> [232,]  62   3      1          1        1   199
#> [233,]  65   6      0          9        0   112
#> [234,]  65   3      1          0        1    80
#> [235,]  63   5      1          4        0   170
#> [236,]  62  13      1         11        0   180
#> [237,]  67  11      0         11        1   100
#> [238,]  64   2      0          2        0   201
#> [239,]  66  18      1          5        0   142
#> [240,]  66  16      1         11        1   169
#> [241,]  62   9      0        180        0   145
#> [242,]  61  15      1         10        0   130
#> [243,]  63   9      1          8        1   160
#> [244,]  63   3      1          2        0   120
#> [245,]  64  19      1          8        1   160
#> [246,]  65   8      1          0        1   140
#> [247,]  67   6      0        180        1   170
#> [248,]  64  13      1         12        1   150
#> [249,]  66   7      1          0        1   115
#> [250,]  64  14      1         13        1   150
#> [251,]  65   3      0          3        0   105
#> [252,]  64   0      0          0        1   148
#> [253,]  66   3      1          0        1   135
#> [254,]  66   6      1          0        1   140
#> [255,]  68   1      0        180        1   166
#> [256,]  63   7      1          0        0   162
#> [257,]  67   8      1          1        1   130
#> [258,]  63  10      0         16        1   160
#> [259,]  64   1      0          1        1   120
#> [260,]  68  18      0        180        1   260
#> [261,]  63   8      1          1        1   162
#> [262,]  65  18      1          3        0   120
#> [263,]  68  14      0         79        0   172
#> [264,]  66  11      1          0        0   100
#> [265,]  65   4      1          2        1   145
#> [266,]  69  12      0         15        1   140
#> [267,]  63   2      0        180        0   150
#> [268,]  65  11      1          6        0   130
#> [269,]  69   6      0        180        1   100
#> [270,]  66   9      1          8        0   130
#> [271,]  63   8      0        180        1   120
#> [272,]  68  14      1         13        1   140
#> [273,]  66   3      0          3        1   138
#> [274,]  69   1      1          0        0   170
#> [275,]  68  10      1         10        1   150
#> [276,]  65   1      1          0        0   133
#> [277,]  67   7      1          4        1   130
#> [278,]  63   2      1          0        0    99
#> [279,]  67   2      0        180        0   184
#> [280,]  65   6      0          6        0    80
#> [281,]  65  10      1          1        1   148
#> [282,]  66  19      1         12        1   150
#> [283,]  67  12      1         12        0   160
#> [284,]  69   6      0         99        1   140
#> [285,]  65   4      1          1        0   130
#> [286,]  66   4      0        180        1   130
#> [287,]  70  15      1         12        1   132
#> [288,]  64   4      0        180        1   140
#> [289,]  64   0      1          0        1   118
#> [290,]  67   2      0         18        0   131
#> [291,]  68   4      1          0        1   160
#> [292,]  65  13      1         12        1   130
#> [293,]  69  17      1         10        0   140
#> [294,]  69   8      0         93        0   140
#> [295,]  64  21      0         21        1   155
#> [296,]  66   6      0        180        0   140
#> [297,]  65   1      0          1        1   120
#> [298,]  68  18      1          0        1   160
#> [299,]  68   4      0          4        1   190
#> [300,]  71   3      0          5        0   112
#> [301,]  70   7      1          0        1   190
#> [302,]  68   7      0        150        0   210
#> [303,]  71  20      1          0        1   160
#> [304,]  67   2      0        180        0   128
#> [305,]  66   9      1          3        1   151
#> [306,]  66   1      1          1        1   165
#> [307,]  70  14      0        171        0   166
#> [308,]  66   4      0        180        0   130
#> [309,]  67   6      1          4        0   130
#> [310,]  68  18      1         14        1   170
#> [311,]  67  14      1         13        0   130
#> [312,]  65  14      1         13        1   150
#> [313,]  69   8      0        180        1   180
#> [314,]  66   2      0          2        1   228
#> [315,]  71   6      0         45        1   158
#> [316,]  69   5      0          5        1   142
#> [317,]  69   3      0          3        1   130
#> [318,]  70  22      1         13        0   103
#> [319,]  67   1      0         36        1   104
#> [320,]  67   5      0          5        0   130
#> [321,]  68   6      0        180        0   145
#> [322,]  69   8      1          5        1   195
#> [323,]  69   6      1          4        1   174
#> [324,]  72   3      1          0        1   132
#> [325,]  69   8      1          7        1   108
#> [326,]  69  19      0        180        0   130
#> [327,]  68  18      0         18        1   100
#> [328,]  67  14      0        172        1   140
#> [329,]  69  11      1          0        1   120
#> [330,]  66   2      0        180        0   130
#> [331,]  67   7      1          4        0   122
#> [332,]  69   4      1          3        0   132
#> [333,]  68   2      0          7        1   130
#> [334,]  69   8      1          2        0   121
#> [335,]  70   3      0        123        0   130
#> [336,]  70   9      0        180        1   142
#> [337,]  72   5      1          4        0   170
#> [338,]  67  12      1          8        0   120
#> [339,]  69   1      0          1        1   110
#> [340,]  67   1      0          1        1    60
#> [341,]  67   4      0         60        1   136
#> [342,]  69   5      0         76        0   120
#> [343,]  67   8      1          0        1   130
#> [344,]  72  13      1         11        1   195
#> [345,]  66  24      1         13        0   130
#> [346,]  72  30      1          0        1   145
#> [347,]  70   7      0          7        0   102
#> [348,]  68   7      1          2        0   135
#> [349,]  73  20      1          0        1   170
#> [350,]  71   6      0          9        0   120
#> [351,]  69  10      1          6        1   120
#> [352,]  70  11      0        180        1   210
#> [353,]  72  19      1          8        0   120
#> [354,]  67   5      1          0        1   147
#> [355,]  67   9      0        180        0   158
#> [356,]  73  13      0        152        1   130
#> [357,]  72   2      0          2        1   100
#> [358,]  71   1      0        173        1   188
#> [359,]  70   3      0        180        0   121
#> [360,]  68   4      1          3        0   210
#> [361,]  72   5      0         28        0   120
#> [362,]  71   5      0        180        0   191
#> [363,]  73   6      0        180        1   117
#> [364,]  69  16      1         10        1   140
#> [365,]  68   7      0        180        1   130
#> [366,]  69   1      1          0        0   155
#> [367,]  72   8      1          1        1   150
#> [368,]  71   2      1          0        1   180
#> [369,]  68  15      1         13        1   130
#> [370,]  70   3      0          3        1   159
#> [371,]  70  13      1          9        0   100
#> [372,]  72   6      0        180        1   130
#> [373,]  73   0      0        180        1   161
#> [374,]  71   3      1          1        0   150
#> [375,]  71  15      1         11        0   165
#> [376,]  74  20      0         20        1   180
#> [377,]  68   9      0        180        1   120
#> [378,]  74   0      1          0        1    90
#> [379,]  70   5      1          0        1   190
#> [380,]  71  17      1         11        0   160
#> [381,]  71   8      1          7        0   149
#> [382,]  71   3      1          2        1   190
#> [383,]  69  12      1          1        1   149
#> [384,]  74   4      0          4        0   120
#> [385,]  72   5      1          3        1   160
#> [386,]  70   3      0        180        1   154
#> [387,]  73   6      0        180        0   110
#> [388,]  71   7      1          2        0   143
#> [389,]  72   8      1          0        1   140
#> [390,]  74   3      0          3        1   150
#> [391,]  73  17      1         11        0   140
#> [392,]  71  13      1          8        0   121
#> [393,]  69   2      1          1        1    80
#> [394,]  70   4      1          0        1   140
#> [395,]  71  14      1         13        1   170
#> [396,]  74   7      1          0        1   117
#> [397,]  72  10      1          8        1   153
#> [398,]  69   7      0        180        1   144
#> [399,]  70   8      0          8        0   120
#> [400,]  75   1      0          1        0   133
#> [401,]  73  10      1          9        1   146
#> [402,]  73  10      1         10        1   120
#> [403,]  71   2      0         10        1   112
#> [404,]  75  13      1          1        1   130
#> [405,]  71  11      1          8        0   110
#> [406,]  71   4      0          4        0   134
#> [407,]  73  10      1          8        0   120
#> [408,]  70   7      1          4        0   184
#> [409,]  72   7      0         57        1   145
#> [410,]  70   3      0          3        0   150
#> [411,]  76  25      1         12        1   170
#> [412,]  73  12      1         12        1   140
#> [413,]  75   1      0        180        1   140
#> [414,]  73   5      0        180        0   126
#> [415,]  73   4      0        180        0   124
#> [416,]  74  34      1          8        1   233
#> [417,]  76   3      1          0        1   120
#> [418,]  71  32      1         12        1   107
#> [419,]  72   5      0        180        0   154
#> [420,]  72   3      0        180        0   160
#> [421,]  77  11      0         11        1   150
#> [422,]  75   3      1          1        0   180
#> [423,]  72   7      1          2        0   142
#> [424,]  73  15      0         15        1   160
#> [425,]  71  16      0        180        0   140
#> [426,]  73  10      1         10        0   124
#> [427,]  74   3      0          3        1   128
#> [428,]  76   8      1          0        1   141
#> [429,]  74  19      1          4        1   200
#> [430,]  73   6      0          6        1   114
#> [431,]  74   2      0        180        0   190
#> [432,]  76  17      1          0        1   200
#> [433,]  73   4      1          3        1   125
#> [434,]  76  13      1         10        0   110
#> [435,]  73  13      1         11        0   195
#> [436,]  74   8      1          0        1   105
#> [437,]  75   4      1          2        1   188
#> [438,]  75   1      0          1        1   125
#> [439,]  74   2      0        180        0   111
#> [440,]  73   1      0         52        1   105
#> [441,]  72   5      0        180        0   120
#> [442,]  78  12      1         11        1   160
#> [443,]  76  44      1         10        0   105
#> [444,]  76   5      0        180        0   185
#> [445,]  74  10      1          0        1   135
#> [446,]  76   5      1          0        1   167
#> [447,]  74   8      1          8        1   170
#> [448,]  73  33      1         12        1   175
#> [449,]  77   1      1          0        1    90
#> [450,]  76  12      1         11        1   120
#> [451,]  73   7      1          0        0   174
#> [452,]  74   6      0         79        1   140
#> [453,]  75   3      1          1        1   171
#> [454,]  74   9      1          8        0   200
#> [455,]  75   6      0        180        0   150
#> [456,]  78  18      0         18        1   144
#> [457,]  77   3      0        180        0   110
#> [458,]  73  11      1          2        1   110
#> [459,]  74   2      0        180        0   100
#> [460,]  78   7      0          7        1   133
#> [461,]  78   8      1          6        1   110
#> [462,]  74   7      0          7        0   161
#> [463,]  78  32      1          9        1   198
#> [464,]  80  10      1          6        1   147
#> [465,]  78   0      0        180        1   212
#> [466,]  78  13      1          5        0   130
#> [467,]  75  12      1          1        1   120
#> [468,]  78  15      0        180        1   270
#> [469,]  80   8      0          8        1   120
#> [470,]  75  13      1          6        0   150
#> [471,]  76   1      0          1        1    83
#> [472,]  79   4      0         80        0   145
#> [473,]  78  12      1          9        0   150
#> [474,]  78   2      1          1        0   130
#> [475,]  75   4      1          0        0   212
#> [476,]  77   2      1          0        1   143
#> [477,]  78  10      0        180        1   130
#> [478,]  76  11      1          0        0   120
#> [479,]  75   3      0          3        0     0
#> [480,]  76   7      0         29        1   150
#> [481,]  80   9      0         23        1   128
#> [482,]  80   6      0          6        1   150
#> [483,]  78   6      1          0        1   240
#> [484,]  76   3      1          0        1   140
#> [485,]  78  11      1          1        1   140
#> [486,]  79   2      1          0        1   121
#> [487,]  78  14      1          0        1   140
#> [488,]  81   1      0          1        0   130
#> [489,]  76   4      0          4        1   160
#> [490,]  76  12      1         10        1   127
#> [491,]  77   6      0          6        1   107
#> [492,]  80   3      1          0        1   120
#> [493,]  78  11      0        180        1   135
#> [494,]  77  31      1          3        1   161
#> [495,]  76   1      0          1        1    90
#> [496,]  77   7      0        180        1   170
#> [497,]  77   6      0          6        1   144
#> [498,]  79   4      1          0        1   120
#> [499,]  80  15      1         12        1   150
#> [500,]  77   9      1          4        0   141
#> [501,]  82   5      0          8        1   120
#> [502,]  80  40      1          0        1   138
#> [503,]  78   4      0         59        1   112
#> [504,]  80  17      1         12        0   100
#> [505,]  76   7      0        161        0   151
#> [506,]  79  10      0         10        1   120
#> [507,]  81   4      1          2        1   126
#> [508,]  79  28      0        164        0   100
#> [509,]  80   9      0        118        1   186
#> [510,]  80   6      0        173        1   160
#> [511,]  79   1      0         37        1   140
#> [512,]  81   3      0        180        0   184
#> [513,]  81   2      0        175        0   172
#> [514,]  78   7      0          7        1   147
#> [515,]  77  13      1          0        1   190
#> [516,]  80   5      1          1        1   108
#> [517,]  78   4      0        180        0   175
#> [518,]  79   3      0          3        1   101
#> [519,]  78  26      1          5        0   194
#> [520,]  76   1      0        166        0   131
#> [521,]  81   4      1          1        1   104
#> [522,]  78  20      1          0        1   109
#> [523,]  80   1      0          1        0   100
#> [524,]  78   3      1          1        1   152
#> [525,]  77  10      1          8        1   130
#> [526,]  77   5      0         85        0   188
#> [527,]  80   2      1          1        0   168
#> [528,]  79   6      0          6        0   152
#> [529,]  80   6      1          0        1   119
#> [530,]  78   2      0        180        0   148
#> [531,]  80   5      0          5        1   130
#> [532,]  82   1      1          0        1    82
#> [533,]  79  10      0        180        1   150
#> [534,]  77   4      0        180        1    98
#> [535,]  79   1      0        125        0   193
#> [536,]  82  21      1          2        0   155
#> [537,]  79   4      0          4        1   121
#> [538,]  80   6      0          6        1   110
#> [539,]  83   9      1          5        1   170
#> [540,]  82   5      0        180        0   110
#> [541,]  83   5      0        180        0   148
#> [542,]  79   7      1          6        0   130
#> [543,]  83   4      0        103        0    97
#> [544,]  81  11      1          8        0   160
#> [545,]  80  11      1          8        0   170
#> [546,]  78  23      1         10        1   145
#> [547,]  79   4      0          4        1   183
#> [548,]  82   8      1          1        0   128
#> [549,]  81  15      0        180        1   140
#> [550,]  80   7      1          0        1   146
#> [551,]  84   5      1          1        1    85
#> [552,]  81  20      1          9        0   170
#> [553,]  83   8      0          8        0   115
#> [554,]  81  16      0         16        1   110
#> [555,]  80   6      1          0        1   150
#> [556,]  81   8      0        180        0   146
#> [557,]  80   8      1          7        0   160
#> [558,]  85   4      0        180        0    90
#> [559,]  83   2      0          2        1   155
#> [560,]  82   6      0        128        1   100
#> [561,]  80   3      1          1        1   230
#> [562,]  82  23      1          0        0   110
#> [563,]  84   5      0        180        1   203
#> [564,]  83   3      0        180        0   174
#> [565,]  79   9      1          8        0   150
#> [566,]  85   3      1          2        1   160
#> [567,]  84   4      0         89        1   129
#> [568,]  80   2      1          0        1   130
#> [569,]  79   4      0          4        1    60
#> [570,]  80   6      0         71        1   189
#> [571,]  82  19      0         19        0   120
#> [572,]  83   9      0        180        0   198
#> [573,]  79  14      1          0        0   110
#> [574,]  83   3      0        114        0    98
#> [575,]  81  14      1         12        1   128
#> [576,]  83   2      0        154        0   130
#> [577,]  83   1      0        180        0   160
#> [578,]  81   4      0          4        0   175
#> [579,]  84  15      1         13        1   110
#> [580,]  81   1      0          1        1   145
#> [581,]  81  12      0         12        1   163
#> [582,]  82  16      1          8        0   103
#> [583,]  82   5      1          0        1   146
#> [584,]  81   4      0          4        0   160
#> [585,]  86  12      0        180        1   120
#> [586,]  82   3      1          2        0   130
#> [587,]  82  15      1          0        0   183
#> [588,]  80   2      0         88        0   135
#> [589,]  83   7      0        126        0   135
#> [590,]  86   8      0          8        1   132
#> [591,]  81  16      1          9        0   180
#> [592,]  84   6      0        165        0   145
#> [593,]  82   9      0        180        1   134
#> [594,]  84   3      0        180        1   120
#> [595,]  81  13      0        180        0   152
#> [596,]  81   2      1          0        1   118
#> [597,]  81   4      0        180        0   160
#> [598,]  82   1      0        180        1   193
#> [599,]  87   2      0          5        1   137
#> [600,]  86  12      1          0        1   132
#> [601,]  82  14      1         11        1   103
#> [602,]  84   3      1          2        0   125
#> [603,]  83  10      1          0        1   190
#> [604,]  86   2      0        180        1   169
#> [605,]  88  14      1          3        1   130
#> [606,]  84   3      0          3        1   121
#> [607,]  84   7      1          2        0   148
#> [608,]  87   2      0        180        0   113
#> [609,]  84   3      0        180        1   170
#> [610,]  82   4      0          4        0   130
#> [611,]  86  13      0        177        0   163
#> [612,]  86   6      0          6        1   117
#> [613,]  84  13      0         62        1   100
#> [614,]  86   6      1          1        0   112
#> [615,]  83  20      1          3        1   150
#> [616,]  85  22      0         22        1   184
#> [617,]  83   9      0         65        1   150
#> [618,]  86   9      1          7        1   142
#> [619,]  86   6      0         46        0   173
#> [620,]  88   3      0        115        0   110
#> [621,]  88   2      0        180        1    68
#> [622,]  83   3      0          3        1   130
#> [623,]  86  15      1          8        1   109
#> [624,]  88   4      0          4        0    86
#> [625,]  89   5      0        119        1   140
#> [626,]  87   6      0        180        1   110
#> [627,]  87   1      0          1        0   170
#> [628,]  85   8      0          8        1   136
#> [629,]  84   2      0        110        1   174
#> [630,]  87  29      0         29        1    97
#> [631,]  87  15      1          9        1   138
#> [632,]  84   0      0        180        1   136
#> [633,]  89  10      0         46        1   170
#> [634,]  90  14      0         14        1   100
#> [635,]  88   1      0          1        0   135
#> [636,]  91   8      0          8        0   100
#> [637,]  88   8      0         50        1   154
#> [638,]  90  11      1         10        1   186
#> [639,]  87   6      0        126        1   168
#> [640,]  86  10      0        180        1   137
#> [641,]  86   9      1          7        0   130
#> [642,]  90   4      1          0        0   121
#> [643,]  91   1      0          1        1    74
#> [644,]  87  43      0        178        1   130
#> [645,]  87   5      0         36        1   150
#> [646,]  90   5      1          0        1   125
#> [647,]  92   1      0          1        1   167
#> [648,]  88   5      0        158        0   100
#> [649,]  89  12      1          0        1   130
#> [650,]  89   2      0        168        0   118
#> [651,]  91   5      0        169        1   176
#> [652,]  89  52      0         52        1   130
#> [653,]  89   4      0          4        1   159
#> [654,]  89  14      0        180        1    84
#> [655,]  90  18      0        180        0   188
#> [656,]  91   4      1          0        1   120
#> [657,]  90  19      1         11        1   129
#> [658,]  94   6      0         50        0    78
#> [659,]  90   1      0          1        1   118
#> [660,]  92   4      0         76        1   149
#> [661,]  91   1      0        180        0   158
#> [662,]  90  16      0         16        1   106
#> [663,]  90   3      0         67        0   162
#> [664,]  94   3      0         26        1   144
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+   2.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [11]   5.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+   6.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+   5.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 172.0+ 180.0+
#>  [61] 180.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+   2.0  179.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0 
#>  [81]  36.0   88.0+ 180.0+  77.0  180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+   4.0+ 180.0+ 166.0+  99.0    7.0+   6.0+ 180.0+ 180.0+
#> [101] 171.0+ 180.0+ 180.0+   6.0+ 180.0+   9.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [111] 180.0+ 180.0+ 180.0+  16.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 140.0 
#> [121] 180.0+ 165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [131] 180.0+ 180.0+  15.0  166.0+   5.0+   4.0+ 147.0+ 180.0+ 180.0+   5.0+
#> [141] 180.0+ 180.0+   9.0+ 180.0+   2.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+
#> [151] 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+   3.0  180.0+ 180.0+
#> [161] 180.0+  10.0+ 180.0+ 180.0+   3.0+  19.0  180.0+ 180.0+ 180.0+ 172.0+
#> [171] 172.0+ 180.0+ 180.0+ 180.0+   1.0+ 180.0+  77.0   13.0+   8.0+ 180.0+
#> [181] 180.0+ 180.0+ 170.0   94.0    7.0    6.0  180.0+ 180.0+ 180.0+ 180.0+
#> [191] 180.0+  13.0+   5.0   18.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+
#> [201] 180.0+   4.0+ 180.0+   9.0    7.0+  22.0  180.0+  84.0  180.0+ 180.0+
#> [211]   1.0  180.0+   4.0+   3.0+   6.0+ 180.0+ 180.0+  17.0  180.0+   3.0+
#> [221]  88.0  180.0+  12.0  180.0+ 180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+
#> [231]  12.0  180.0+   9.0    3.0  180.0+ 180.0+  11.0+   2.0+  18.0+ 180.0+
#> [241] 180.0+ 180.0+ 180.0+   3.0+ 103.0   15.0  180.0+  13.0  179.0+  14.0+
#> [251]   3.0    0.5+   3.0+ 180.0+ 180.0+   7.0+   8.0   16.0    1.0  180.0+
#> [261] 180.0+ 123.0+  79.0  180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+
#> [271] 180.0+ 180.0+   3.0  175.0   10.0  180.0+ 180.0+ 180.0+ 180.0+   6.0 
#> [281] 180.0+  19.0+  12.0   99.0  180.0+ 180.0+ 180.0+ 180.0+   0.5   18.0 
#> [291] 180.0+ 180.0+ 180.0+  93.0   21.0+ 180.0+   1.0   18.0+   4.0    5.0 
#> [301]   7.0+ 150.0  180.0+ 180.0+ 180.0+   1.0  171.0  180.0+   6.0  180.0+
#> [311] 180.0+  14.0+ 180.0+   2.0   45.0    5.0+   3.0+ 180.0+  36.0    5.0+
#> [321] 180.0+ 180.0+  97.0  180.0+   8.0+ 180.0+  18.0  172.0+ 180.0+ 180.0+
#> [331]   7.0  180.0+   7.0    8.0+ 123.0  180.0+ 180.0+ 180.0+   1.0    1.0 
#> [341]  60.0   76.0  180.0+ 132.0  180.0+ 162.0    7.0+   7.0+ 124.0    9.0 
#> [351] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 152.0    2.0  173.0+ 180.0+ 180.0+
#> [361]  28.0  180.0+ 180.0+  16.0+ 180.0+ 180.0+ 180.0+ 180.0+  15.0    3.0+
#> [371]  13.0+ 180.0+ 180.0+   3.0+ 180.0+  20.0  180.0+   0.5  180.0+ 180.0+
#> [381]   8.0    3.0   12.0    4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0 
#> [391] 180.0+ 175.0    2.0  180.0+  14.0+ 180.0+  10.0+ 180.0+   8.0+   1.0 
#> [401] 180.0+  15.0   10.0   13.0  180.0+   4.0+  10.0  104.0+  57.0    3.0+
#> [411] 180.0+  12.0  180.0+ 180.0+ 180.0+  34.0  180.0+ 177.0+ 180.0+ 180.0+
#> [421]  11.0+ 180.0+   7.0   15.0+ 180.0+  10.0    3.0  180.0+ 180.0+   6.0 
#> [431] 180.0+  17.0+ 180.0+ 174.0+ 180.0+ 180.0+  46.0    1.0  180.0+  52.0 
#> [441] 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+   8.0   33.0    1.0   12.0 
#> [451]   7.0+  79.0    3.0  168.0+ 180.0+  18.0  180.0+  11.0  180.0+   7.0 
#> [461]   8.0+   7.0   32.0   10.0  180.0+ 172.0   12.0  180.0+   8.0  180.0+
#> [471]   1.0   80.0  180.0+ 180.0+   4.0+   2.0  180.0+  11.0    3.0   29.0 
#> [481]  23.0    6.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+   1.0    4.0  180.0+
#> [491]   6.0    3.0+ 180.0+ 171.0    1.0  180.0+   6.0  138.0  180.0+  71.0 
#> [501]   8.0   40.0   59.0   17.0  161.0   10.0+  93.0  164.0  118.0  173.0 
#> [511]  37.0  180.0+ 175.0+   7.0+  22.0    5.0+ 180.0+   3.0  171.0+ 166.0+
#> [521]  71.0   20.0+   1.0    3.0+  10.0   85.0   10.0    6.0+   6.0  180.0+
#> [531]   5.0    1.0  180.0+ 180.0+ 125.0  180.0+   4.0    6.0    9.0+ 180.0+
#> [541] 180.0+ 180.0+ 103.0  180.0+ 169.0   70.0    4.0  180.0+ 180.0+   7.0+
#> [551] 180.0+  20.0    8.0+  16.0  180.0+ 180.0+ 180.0+ 180.0+   2.0  128.0 
#> [561]   3.0+  62.0  180.0+ 180.0+ 180.0+ 180.0+  89.0  180.0+   4.0   71.0 
#> [571]  19.0  180.0+ 180.0+ 114.0  180.0+ 154.0  180.0+   4.0+ 180.0+   1.0 
#> [581]  12.0   16.0+   5.0+   4.0+ 180.0+   3.0   83.0   88.0  126.0    8.0 
#> [591] 180.0+ 165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+
#> [601] 174.0  180.0+ 180.0+ 180.0+  14.0    3.0  180.0+ 180.0+ 180.0+   4.0 
#> [611] 177.0    6.0+  62.0    6.0+  20.0   22.0   65.0   11.0   46.0  115.0 
#> [621] 180.0+   3.0+ 180.0+   4.0  119.0  180.0+   1.0+   8.0  110.0   29.0 
#> [631] 180.0+ 180.0+  46.0   14.0    1.0+   8.0   50.0   11.0  126.0  180.0+
#> [641] 180.0+   4.0    1.0  178.0+  36.0   89.0    1.0  158.0  180.0+ 168.0 
#> [651] 169.0   52.0    4.0  180.0+ 180.0+   4.0  180.0+  50.0    1.0+  76.0 
#> [661] 180.0+  16.0   67.0   26.0   53.0    7.0+   2.0  180.0+   3.0   15.0+
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
#>   0.8363578 
```
