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
#> min 0.00323    45   2.828 0.09571       6
#> 1se 0.05264    15   2.911 0.09375       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38  13      1          0        1   161
#>   [9,]  38   2      0        115        0   150
#>  [10,]  36   1      0        180        1   155
#>  [11,]  35   0      0        180        1   119
#>  [12,]  36   5      1          0        1   115
#>  [13,]  38  16      1         10        0   160
#>  [14,]  38  12      1         11        1    92
#>  [15,]  42   3      1          1        1   130
#>  [16,]  37   1      1          0        1   146
#>  [17,]  40   2      1          1        1   148
#>  [18,]  42   2      0        180        1   100
#>  [19,]  40   6      0        180        1   138
#>  [20,]  43   3      1          0        1   100
#>  [21,]  41   2      1          1        0   166
#>  [22,]  40   1      1          0        1   145
#>  [23,]  43   4      1          0        1   130
#>  [24,]  42  15      1         13        1   125
#>  [25,]  42   2      0        180        1   124
#>  [26,]  44   5      1          1        0   170
#>  [27,]  45   3      0        180        1   154
#>  [28,]  41  10      1          8        0   150
#>  [29,]  44   3      0        180        0   141
#>  [30,]  41  13      1          1        0   140
#>  [31,]  45   9      1          7        0   110
#>  [32,]  45   6      0        180        1   170
#>  [33,]  41   5      1          4        1   141
#>  [34,]  44   2      1          1        1   150
#>  [35,]  43   2      0        180        1   140
#>  [36,]  45   2      0        180        1   140
#>  [37,]  46  15      0        180        0   120
#>  [38,]  48  15      0        180        1   160
#>  [39,]  45   3      0        150        0   130
#>  [40,]  44   3      1          0        1   180
#>  [41,]  46   7      1          2        0   166
#>  [42,]  45   4      1          0        0   124
#>  [43,]  43  10      0        180        0   185
#>  [44,]  47   6      1          0        1   116
#>  [45,]  46  13      1         10        0   100
#>  [46,]  44   0      1          0        1    96
#>  [47,]  43   3      1          0        1   124
#>  [48,]  45   8      1          0        1   117
#>  [49,]  49   5      0         73        1   136
#>  [50,]  46   6      1          0        1   100
#>  [51,]  45   5      0        180        1   190
#>  [52,]  46   5      1          3        0   130
#>  [53,]  44   2      0        180        0   142
#>  [54,]  46  15      0        180        1   120
#>  [55,]  45   9      1          0        1   145
#>  [56,]  48   3      0        180        0   154
#>  [57,]  48  12      1         11        0   200
#>  [58,]  47   5      1          3        1   130
#>  [59,]  46   3      1          0        1   119
#>  [60,]  49   4      0        180        0   117
#>  [61,]  50   1      1          0        1   129
#>  [62,]  47   7      0        180        0   145
#>  [63,]  50   4      1          1        0   125
#>  [64,]  50   6      1          2        1   140
#>  [65,]  46   3      1          1        1   140
#>  [66,]  50   7      0        180        1   110
#>  [67,]  49   2      0          2        0   105
#>  [68,]  49  15      1         11        1   160
#>  [69,]  50   7      1          0        1    92
#>  [70,]  50   4      0          4        1   100
#>  [71,]  51   3      1          2        0   113
#>  [72,]  50   9      0        180        0   130
#>  [73,]  49   7      1          4        1    90
#>  [74,]  51   8      0        180        1   140
#>  [75,]  52   2      0        180        0   155
#>  [76,]  46   3      0        180        1   120
#>  [77,]  50   4      1          1        0   150
#>  [78,]  53   8      0         36        1   160
#>  [79,]  47   2      1          1        0   110
#>  [80,]  52   4      1          4        0   152
#>  [81,]  49   9      1          3        0   102
#>  [82,]  49  15      0        180        1   160
#>  [83,]  53   5      0        180        1   140
#>  [84,]  54   6      1          3        0   129
#>  [85,]  51   3      1          1        0   140
#>  [86,]  50   2      0          5        1   106
#>  [87,]  48   3      1          2        0   150
#>  [88,]  51  25      1          1        0   202
#>  [89,]  52  14      1          7        1   200
#>  [90,]  48  11      1         10        0   120
#>  [91,]  53   4      1          0        1   156
#>  [92,]  51  13      0         99        1   160
#>  [93,]  49  16      0         16        0   125
#>  [94,]  54  23      1         10        0   131
#>  [95,]  52   7      1          2        0   154
#>  [96,]  54   9      1          1        0   130
#>  [97,]  55   4      1          2        0   150
#>  [98,]  52   4      0        180        1   180
#>  [99,]  52   4      0        180        0   183
#> [100,]  55  28      1         13        1   160
#> [101,]  49   6      1          0        1   130
#> [102,]  50   7      1          1        0   156
#> [103,]  53   9      0          9        1    95
#> [104,]  56   4      1          1        1   130
#> [105,]  52   5      0        175        1   117
#> [106,]  55   2      0          2        0   145
#> [107,]  54   1      0        180        0   162
#> [108,]  56   3      0        180        1   193
#> [109,]  56   2      0        180        0   132
#> [110,]  52   8      0        180        0   119
#> [111,]  53  18      1          9        1   150
#> [112,]  55   6      0        180        0   170
#> [113,]  53  10      1          9        0   172
#> [114,]  53  15      0         15        1    90
#> [115,]  53   4      0        180        1   150
#> [116,]  54  12      1          0        1   190
#> [117,]  55   2      0        134        1   140
#> [118,]  56   3      0          8        1   139
#> [119,]  55   1      0          2        0   130
#> [120,]  54   2      1          1        0   135
#> [121,]  52   9      1          3        0   170
#> [122,]  54   2      1          1        1   176
#> [123,]  57   5      1          3        1   138
#> [124,]  57   1      0          1        1   100
#> [125,]  56   4      1          0        1   140
#> [126,]  55  11      1          7        0   104
#> [127,]  56  14      1         11        0   130
#> [128,]  57  10      0        180        1   170
#> [129,]  58   8      0          8        1   130
#> [130,]  54   5      0        180        1   108
#> [131,]  55   3      1          1        1   156
#> [132,]  57   0      0          0        1   150
#> [133,]  59   3      1          1        0   172
#> [134,]  57   4      0        180        1   119
#> [135,]  58   6      1          0        1    90
#> [136,]  55  13      0        166        1   140
#> [137,]  57   4      1          2        1   185
#> [138,]  53   4      0        147        1   145
#> [139,]  55   3      1          2        0   140
#> [140,]  54   7      1          0        1   141
#> [141,]  56   4      0          4        0   164
#> [142,]  59  15      1         10        0   140
#> [143,]  58   9      1          0        1   180
#> [144,]  58   1      1          1        1   200
#> [145,]  55   5      1          0        0   140
#> [146,]  55   2      0          2        0   106
#> [147,]  60  11      1          9        0   106
#> [148,]  59   3      0        180        0   120
#> [149,]  58   4      1          0        1   160
#> [150,]  57   2      0          2        1   120
#> [151,]  57   5      0        180        1   130
#> [152,]  58  11      1          9        1   124
#> [153,]  55   5      1          0        1   160
#> [154,]  57  10      1          9        0   103
#> [155,]  59   6      1          0        1   140
#> [156,]  59   5      0        180        1   155
#> [157,]  59   4      1          0        1   152
#> [158,]  61   9      0          9        1   160
#> [159,]  58   4      1          3        0   120
#> [160,]  60   0      1          0        1    80
#> [161,]  59   2      1          1        0   140
#> [162,]  58   8      0        161        1   140
#> [163,]  58  14      1          6        0   190
#> [164,]  61   4      1          3        0   151
#> [165,]  61   9      1          8        0   150
#> [166,]  61   3      1          2        1   102
#> [167,]  58   1      0          1        1   100
#> [168,]  61  20      1         13        0   130
#> [169,]  57  13      1         10        0   110
#> [170,]  57   2      1          0        1   116
#> [171,]  58  10      0         10        1   150
#> [172,]  57   4      1          3        0   138
#> [173,]  57  11      0        180        1   150
#> [174,]  61   3      0         17        0   143
#> [175,]  56  14      0         45        0   130
#> [176,]  57   3      1          2        0   120
#> [177,]  58  19      1         13        1   140
#> [178,]  56  13      1          6        1   158
#> [179,]  59   9      1          0        1    80
#> [180,]  60  12      1          0        1   114
#> [181,]  55   9      1          7        1   135
#> [182,]  61   4      1          0        1   115
#> [183,]  57   1      0          1        0   126
#> [184,]  59   5      1          2        0   182
#> [185,]  58   5      1          1        1   135
#> [186,]  61   8      0         77        0   120
#> [187,]  61  13      0         13        0   210
#> [188,]  62  10      1          0        1   153
#> [189,]  61  18      0        170        0   140
#> [190,]  58   8      1          3        1   150
#> [191,]  61   7      0          7        1   150
#> [192,]  60   7      0          7        0   147
#> [193,]  61   6      0          6        0   134
#> [194,]  59  13      1          2        0   198
#> [195,]  57  12      1          9        1   120
#> [196,]  60  17      1          8        1   140
#> [197,]  58   3      1          0        1   146
#> [198,]  62   4      1          3        0   173
#> [199,]  58   2      0         30        0   202
#> [200,]  59   1      0        180        0   155
#> [201,]  59  16      1          9        1   133
#> [202,]  63   6      0         28        1   120
#> [203,]  61  13      0         13        0   120
#> [204,]  61   5      0          5        1   110
#> [205,]  57  18      1          9        1    93
#> [206,]  61   5      0          5        1   160
#> [207,]  58  11      1          9        0   179
#> [208,]  62  17      1         10        1   180
#> [209,]  62   1      1          0        1   172
#> [210,]  58   7      0        180        1   150
#> [211,]  63   3      1          1        0   180
#> [212,]  63   4      1          3        0   222
#> [213,]  63   4      0        180        1   190
#> [214,]  63  15      1         10        1   126
#> [215,]  64   4      0        180        0   130
#> [216,]  60  18      1         13        0   132
#> [217,]  59   8      0        180        1   140
#> [218,]  61   9      1          9        1   150
#> [219,]  62   7      0          7        0   150
#> [220,]  59   1      0         22        1   162
#> [221,]  58   2      0        180        0   127
#> [222,]  60   7      1          5        1   141
#> [223,]  60   7      0          7        0   140
#> [224,]  59   5      1          1        0   148
#> [225,]  65  13      0        180        1   100
#> [226,]  63   1      0          1        0   130
#> [227,]  59   4      0          4        0   149
#> [228,]  64  10      1          9        0   160
#> [229,]  62   6      0          6        0   120
#> [230,]  63  12      1         10        0   200
#> [231,]  60   8      0         17        1   130
#> [232,]  64  12      1         11        0   160
#> [233,]  64   6      1          0        1   140
#> [234,]  63  10      1          0        1   148
#> [235,]  63  14      1          9        0   123
#> [236,]  65  36      1         11        0   140
#> [237,]  63   4      1          3        0   162
#> [238,]  66   3      1          1        0   127
#> [239,]  64  32      1          9        1   160
#> [240,]  63  12      1          9        0   114
#> [241,]  63   7      0        180        0   120
#> [242,]  66   5      1          0        1   110
#> [243,]  65   8      1          0        0   168
#> [244,]  65  10      1          8        1   120
#> [245,]  64   0      0          0        1    90
#> [246,]  60   6      0        180        0   130
#> [247,]  64  21      1         10        0   190
#> [248,]  61  12      1         11        0   154
#> [249,]  64   9      0        180        0   150
#> [250,]  61   4      0        180        1   113
#> [251,]  65   3      0        180        1   190
#> [252,]  64   7      0        180        1   120
#> [253,]  66   6      1          1        1   130
#> [254,]  62   3      1          1        1   199
#> [255,]  65   6      0          9        0   112
#> [256,]  65   3      1          0        1    80
#> [257,]  63   5      1          4        0   170
#> [258,]  62  13      1         11        0   180
#> [259,]  67  11      0         11        1   100
#> [260,]  64   2      0          2        0   201
#> [261,]  66  18      1          5        0   142
#> [262,]  62   9      0        180        0   145
#> [263,]  61  15      1         10        0   130
#> [264,]  63   9      1          8        1   160
#> [265,]  63   3      1          2        0   120
#> [266,]  63   2      1          0        0   140
#> [267,]  64  19      1          8        1   160
#> [268,]  65  15      1         11        1   160
#> [269,]  64  13      1         12        1   150
#> [270,]  64   6      1          0        1   125
#> [271,]  66   7      1          0        1   115
#> [272,]  66  13      1          0        0   118
#> [273,]  64  14      1         13        1   150
#> [274,]  65   3      0          3        0   105
#> [275,]  66   3      1          0        1   135
#> [276,]  66   6      1          0        1   140
#> [277,]  68   1      0        180        1   166
#> [278,]  63   7      1          0        0   162
#> [279,]  68   5      0          5        1    90
#> [280,]  63  10      0         16        1   160
#> [281,]  64   1      0          1        1   120
#> [282,]  68  18      0        180        1   260
#> [283,]  65  17      1         14        1   100
#> [284,]  63   8      1          1        1   162
#> [285,]  68  11      0        180        0   160
#> [286,]  68  14      0         79        0   172
#> [287,]  65  15      1         12        1   150
#> [288,]  65   4      1          2        1   145
#> [289,]  69  12      0         15        1   140
#> [290,]  66  15      1         13        1   160
#> [291,]  63   2      0        180        0   150
#> [292,]  69  21      1         10        0   180
#> [293,]  66   9      1          8        0   130
#> [294,]  63   8      0        180        1   120
#> [295,]  68  14      1         13        1   140
#> [296,]  66   3      0          3        1   138
#> [297,]  69   1      1          0        0   170
#> [298,]  67   1      0        180        1   160
#> [299,]  68  10      1         10        1   150
#> [300,]  67   7      1          4        1   130
#> [301,]  67   2      0        180        0   184
#> [302,]  65  10      1          1        1   148
#> [303,]  66  19      1         12        1   150
#> [304,]  67  12      1         12        0   160
#> [305,]  69   6      0         99        1   140
#> [306,]  65   4      1          1        0   130
#> [307,]  66   4      0        180        1   130
#> [308,]  64  11      0         11        0   125
#> [309,]  64   4      0        180        1   140
#> [310,]  67   2      0         18        0   131
#> [311,]  66   4      0        180        0   177
#> [312,]  69   4      1          3        1   150
#> [313,]  65  13      1         12        1   130
#> [314,]  69   8      0         93        0   140
#> [315,]  64  21      0         21        1   155
#> [316,]  66   6      0        180        0   140
#> [317,]  65   1      0          1        1   120
#> [318,]  68   4      0          4        1   190
#> [319,]  68   7      0        150        0   210
#> [320,]  67   2      0        180        0   128
#> [321,]  66   9      1          3        1   151
#> [322,]  69   8      0        180        1   153
#> [323,]  70  14      0        171        0   166
#> [324,]  66   4      0        180        0   130
#> [325,]  67  10      1          9        0   200
#> [326,]  68  18      1         14        1   170
#> [327,]  69   0      0          0        1   148
#> [328,]  65   2      0        180        0   130
#> [329,]  68   7      1          0        1   150
#> [330,]  69   3      1          2        0   151
#> [331,]  65  14      1         13        1   150
#> [332,]  69   8      0        180        1   180
#> [333,]  71   7      0          7        0   230
#> [334,]  71   6      0         45        1   158
#> [335,]  69   5      0          5        1   142
#> [336,]  69   3      0          3        1   130
#> [337,]  70  22      1         13        0   103
#> [338,]  68   6      0        180        0   145
#> [339,]  69   8      1          5        1   195
#> [340,]  69   6      1          4        1   174
#> [341,]  72   3      1          0        1   132
#> [342,]  72   7      0          7        1   110
#> [343,]  67   3      0        180        0   110
#> [344,]  69  19      0        180        0   130
#> [345,]  68  18      0         18        1   100
#> [346,]  69  11      1          0        1   120
#> [347,]  66   2      0        180        0   130
#> [348,]  69   8      1          2        0   121
#> [349,]  70   3      0        123        0   130
#> [350,]  67  22      1          1        1   140
#> [351,]  67  12      1          8        0   120
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
#> [362,]  68   7      1          2        0   135
#> [363,]  69  10      1          6        1   120
#> [364,]  72  12      1         10        0   170
#> [365,]  67   8      0        180        1   170
#> [366,]  73  13      0        152        1   130
#> [367,]  70   5      0        180        0   150
#> [368,]  72   6      1          5        0   115
#> [369,]  68  23      0        180        1   220
#> [370,]  70   3      0        180        0   121
#> [371,]  69   3      0        180        0   220
#> [372,]  71   3      1          2        0   150
#> [373,]  72   5      0         28        0   120
#> [374,]  71   5      0        180        0   191
#> [375,]  73   6      0        180        1   117
#> [376,]  69  16      1         10        1   140
#> [377,]  69   8      1          1        0   164
#> [378,]  68   7      0        180        1   130
#> [379,]  72  16      1          1        1   130
#> [380,]  69   1      1          0        0   155
#> [381,]  73   7      0          7        1   140
#> [382,]  68  15      1         13        1   130
#> [383,]  70  13      1          9        0   100
#> [384,]  72   6      0        180        1   130
#> [385,]  73   0      0        180        1   161
#> [386,]  74   8      1          0        1    85
#> [387,]  73   4      0        180        1   154
#> [388,]  69   2      1          0        1   110
#> [389,]  71   3      1          1        0   150
#> [390,]  71  15      1         11        0   165
#> [391,]  74  20      0         20        1   180
#> [392,]  68   9      0        180        1   120
#> [393,]  74   0      1          0        1    90
#> [394,]  73   3      1          0        1   136
#> [395,]  70   5      1          0        1   190
#> [396,]  71  17      1         11        0   160
#> [397,]  71   3      1          2        1   190
#> [398,]  73  10      1          8        0   106
#> [399,]  69  12      1          1        1   149
#> [400,]  70  26      1         11        1   120
#> [401,]  74   4      0          4        0   120
#> [402,]  73   4      0         58        1   160
#> [403,]  73   6      0        180        0   110
#> [404,]  74   3      0          3        1   150
#> [405,]  69   2      1          1        1    80
#> [406,]  70   4      1          0        1   140
#> [407,]  71  14      1         13        1   170
#> [408,]  69   7      0        180        1   144
#> [409,]  70   8      0          8        0   120
#> [410,]  71  10      1          9        1   120
#> [411,]  75   1      0          1        0   133
#> [412,]  72  10      1          9        1   160
#> [413,]  73  10      1         10        1   120
#> [414,]  74  15      1          9        1   179
#> [415,]  71   2      0         10        1   112
#> [416,]  75   9      1          7        0   140
#> [417,]  71  11      1          8        0   110
#> [418,]  71   4      0          4        0   134
#> [419,]  72  15      1         12        1   120
#> [420,]  73  10      1          8        0   120
#> [421,]  72   7      0         57        1   145
#> [422,]  73  10      0        180        0   162
#> [423,]  73   5      1          3        1   112
#> [424,]  76  25      1         12        1   170
#> [425,]  73  12      1         12        1   140
#> [426,]  72   2      0        180        0   120
#> [427,]  75   1      0        180        1   140
#> [428,]  72   4      1          0        1   197
#> [429,]  73   4      0        180        0   124
#> [430,]  74  34      1          8        1   233
#> [431,]  71  32      1         12        1   107
#> [432,]  72   5      0        180        0   154
#> [433,]  76   5      0          5        1   130
#> [434,]  77  11      0         11        1   150
#> [435,]  77   4      0          4        0   185
#> [436,]  72   7      1          2        0   142
#> [437,]  71  16      0        180        0   140
#> [438,]  73  10      1         10        0   124
#> [439,]  74   7      0        180        1   150
#> [440,]  74   3      0          3        1   128
#> [441,]  74   2      1          1        0   140
#> [442,]  76   8      1          0        1   141
#> [443,]  74  19      1          4        1   200
#> [444,]  74   2      0        180        0   190
#> [445,]  72   4      1          3        0   160
#> [446,]  76  17      1          0        1   200
#> [447,]  73   4      1          3        1   125
#> [448,]  75   7      0          7        0   190
#> [449,]  75   0      0          0        1   130
#> [450,]  76  13      1          8        1   148
#> [451,]  75   4      1          2        1   188
#> [452,]  74   6      0        180        0   160
#> [453,]  76   4      0          4        1   155
#> [454,]  74   2      0        180        0   111
#> [455,]  73   0      0        180        0   156
#> [456,]  74  10      1          0        1   135
#> [457,]  76   5      1          0        1   167
#> [458,]  74   8      1          8        1   170
#> [459,]  75   9      0        180        1   140
#> [460,]  73  33      1         12        1   175
#> [461,]  77  12      1          9        1   100
#> [462,]  77   1      1          0        1    90
#> [463,]  78   5      1          0        1   170
#> [464,]  74   6      0         79        1   140
#> [465,]  74   9      1          8        0   200
#> [466,]  75   6      0        180        0   150
#> [467,]  79  10      1          8        0   190
#> [468,]  74   2      1          0        1   130
#> [469,]  78  18      0         18        1   144
#> [470,]  78   7      0          7        1   133
#> [471,]  78   8      1          6        1   110
#> [472,]  74   7      0          7        0   161
#> [473,]  76  13      1          1        1   170
#> [474,]  78  32      1          9        1   198
#> [475,]  79   6      0        180        0   170
#> [476,]  78   0      0        180        1   212
#> [477,]  78  13      1          5        0   130
#> [478,]  75   5      0        119        1   150
#> [479,]  78  15      0        180        1   270
#> [480,]  80   8      0          8        1   120
#> [481,]  75  13      1          6        0   150
#> [482,]  74  10      1          8        0   135
#> [483,]  76   1      0          1        1    83
#> [484,]  79   4      0         80        0   145
#> [485,]  78   2      1          1        0   130
#> [486,]  75   4      1          0        0   212
#> [487,]  75  11      1          4        0   162
#> [488,]  75   3      0          3        0     0
#> [489,]  79   8      0         32        1   120
#> [490,]  80   6      0          6        1   150
#> [491,]  78   6      1          0        1   240
#> [492,]  76   3      1          0        1   140
#> [493,]  79   2      1          0        1   121
#> [494,]  78  14      1          0        1   140
#> [495,]  81   1      0          1        0   130
#> [496,]  76   4      0          4        1   160
#> [497,]  79   4      0          4        1   125
#> [498,]  80   3      1          0        1   120
#> [499,]  75   2      1          1        1   204
#> [500,]  78  11      0        180        1   135
#> [501,]  76   1      0          1        1   140
#> [502,]  76   1      0          1        1    90
#> [503,]  78   7      1          0        1   110
#> [504,]  79   3      0          3        0   120
#> [505,]  77   7      0        180        1   170
#> [506,]  77   6      0          6        1   144
#> [507,]  81   1      0        180        0   120
#> [508,]  77   9      1          4        0   141
#> [509,]  82   5      0          8        1   120
#> [510,]  80  40      1          0        1   138
#> [511,]  80  17      1         12        0   100
#> [512,]  76   7      0        161        0   151
#> [513,]  79  10      0         10        1   120
#> [514,]  80  15      1          0        1    90
#> [515,]  81   4      1          2        1   126
#> [516,]  80   9      0        118        1   186
#> [517,]  80   6      0        173        1   160
#> [518,]  78  32      0        180        1   130
#> [519,]  78   7      0          7        1   147
#> [520,]  77  13      1          0        1   190
#> [521,]  78  15      0         15        0   165
#> [522,]  80   5      1          1        1   108
#> [523,]  78   4      0        180        0   175
#> [524,]  78  26      1          5        0   194
#> [525,]  76   1      0        166        0   131
#> [526,]  81   4      1          1        1   104
#> [527,]  78  20      1          0        1   109
#> [528,]  78   3      1          1        1   152
#> [529,]  77  10      1          8        1   130
#> [530,]  77   5      0         85        0   188
#> [531,]  80   2      1          1        0   168
#> [532,]  80   6      1          0        1   119
#> [533,]  78   2      0        180        0   148
#> [534,]  80   5      0          5        1   130
#> [535,]  79  10      0        180        1   150
#> [536,]  77   4      0        180        1    98
#> [537,]  81   1      0        108        0   129
#> [538,]  78  12      0        180        0   134
#> [539,]  79   1      0        125        0   193
#> [540,]  82  21      1          2        0   155
#> [541,]  84  22      1         10        0   180
#> [542,]  79   4      0          4        1   121
#> [543,]  80   6      0          6        1   110
#> [544,]  83   9      1          5        1   170
#> [545,]  83   5      0        180        0   148
#> [546,]  79   7      1          6        0   130
#> [547,]  83   4      0        103        0    97
#> [548,]  81  11      1          8        0   160
#> [549,]  80  11      1          8        0   170
#> [550,]  78  23      1         10        1   145
#> [551,]  78   9      1          4        1   120
#> [552,]  82   8      1          1        0   128
#> [553,]  79   1      0        180        1   170
#> [554,]  80   7      1          0        1   146
#> [555,]  84   5      1          1        1    85
#> [556,]  81  20      1          9        0   170
#> [557,]  83   8      0          8        0   115
#> [558,]  81  16      0         16        1   110
#> [559,]  80   6      1          0        1   150
#> [560,]  80  11      1          8        0   110
#> [561,]  85   4      0        180        0    90
#> [562,]  81   2      1          1        0   198
#> [563,]  83   2      0          2        1   155
#> [564,]  84   4      0        167        0   198
#> [565,]  80   3      1          1        1   230
#> [566,]  82  23      1          0        0   110
#> [567,]  84   5      0        180        1   203
#> [568,]  84   1      0         38        1   205
#> [569,]  81   4      0         90        1   138
#> [570,]  79   9      1          8        0   150
#> [571,]  85   3      1          2        1   160
#> [572,]  80  13      1          8        1   140
#> [573,]  84   4      0         89        1   129
#> [574,]  79   4      0          4        1    60
#> [575,]  80   6      0         71        1   189
#> [576,]  83   1      0          1        1   100
#> [577,]  82  19      0         19        0   120
#> [578,]  80  30      1         13        0   220
#> [579,]  83   2      0        154        0   130
#> [580,]  85   9      1          6        1   160
#> [581,]  83   1      0        180        0   160
#> [582,]  81   4      0          4        0   175
#> [583,]  84  15      1         13        1   110
#> [584,]  82  16      1          8        0   103
#> [585,]  82   5      1          0        1   146
#> [586,]  81   4      0          4        0   160
#> [587,]  86  12      0        180        1   120
#> [588,]  81  19      1         14        0   120
#> [589,]  82   3      1          2        0   130
#> [590,]  80   2      0         88        0   135
#> [591,]  86   8      0          8        1   132
#> [592,]  84   3      0        180        1   120
#> [593,]  81  13      0        180        0   152
#> [594,]  85   3      0          3        1   118
#> [595,]  81   4      0        180        0   160
#> [596,]  83   9      0        180        1   149
#> [597,]  82   1      0        180        1   193
#> [598,]  83   4      0          4        0   130
#> [599,]  87   2      0          5        1   137
#> [600,]  82  14      1         11        1   103
#> [601,]  86   6      1          0        1   140
#> [602,]  84  16      0         70        1   150
#> [603,]  83  19      0         43        0   150
#> [604,]  84   3      1          2        0   125
#> [605,]  83  10      1          0        1   190
#> [606,]  86   2      0        180        1   169
#> [607,]  88  14      1          3        1   130
#> [608,]  84   3      0          3        1   121
#> [609,]  83  13      1         12        0   170
#> [610,]  84   7      1          2        0   148
#> [611,]  87   2      0        180        0   113
#> [612,]  84   9      0         92        1   110
#> [613,]  84   3      0        180        1   170
#> [614,]  86   4      0         38        1   122
#> [615,]  85   3      0          3        1   113
#> [616,]  84  13      0         62        1   100
#> [617,]  83  20      1          3        1   150
#> [618,]  88   4      0          4        1   115
#> [619,]  83   9      0         65        1   150
#> [620,]  86   9      1          7        1   142
#> [621,]  87   2      0        180        1   130
#> [622,]  86   6      0         46        0   173
#> [623,]  88   3      0        115        0   110
#> [624,]  83   3      0          3        1   130
#> [625,]  87   8      0          8        1   157
#> [626,]  86  15      1          8        1   109
#> [627,]  88   4      0          4        0    86
#> [628,]  89   4      0          4        1   153
#> [629,]  89   5      0        119        1   140
#> [630,]  87   6      0        180        1   110
#> [631,]  85   8      0          8        1   136
#> [632,]  87  29      0         29        1    97
#> [633,]  87  15      1          9        1   138
#> [634,]  90  14      0         14        1   100
#> [635,]  88   1      0          1        0   135
#> [636,]  87   2      0        180        0   160
#> [637,]  87   6      1          0        0   125
#> [638,]  91  10      0        145        0   135
#> [639,]  86   3      1          0        1    80
#> [640,]  88   7      0         24        0   119
#> [641,]  88   8      0         50        1   154
#> [642,]  87   6      0        126        1   168
#> [643,]  86  10      0        180        1   137
#> [644,]  86   9      1          7        0   130
#> [645,]  90   4      1          0        0   121
#> [646,]  91   1      0          1        1    74
#> [647,]  90   5      1          0        1   125
#> [648,]  88   3      1          2        0   159
#> [649,]  89   3      1          1        1   160
#> [650,]  92   1      0          1        1   167
#> [651,]  88   5      0        158        0   100
#> [652,]  87   7      0         74        1   105
#> [653,]  89   2      0        168        0   118
#> [654,]  92   7      0          7        1   110
#> [655,]  89   4      0          4        1   159
#> [656,]  91   0      0          0        0     0
#> [657,]  90  18      0        180        0   188
#> [658,]  91   4      1          0        1   120
#> [659,]  90   1      0          1        1   118
#> [660,]  91   2      0          2        1   116
#> [661,]  93   8      0        179        1   110
#> [662,]  94   8      0          8        1   142
#> [663,]  91   1      0        180        0   158
#> [664,]  96   3      0         12        1    97
#> [665,]  95   8      1          5        1   150
#> [666,]  91  12      0         53        1   212
#> [667,]  91   7      0          7        0   135
#> [668,]  93   0      1          0        1   122
#> [669,]  92   5      0         69        0   139
#> [670,]  92   2      0          2        0   112
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+
#>  [11] 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+   3.0 
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+
#>  [41] 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0  180.0+
#>  [51] 180.0+   5.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61] 172.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  179.0+ 180.0+   4.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0  180.0+   4.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+  85.0  180.0+
#>  [91] 166.0+  99.0   16.0+ 152.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0 
#> [101]   6.0+ 180.0+   9.0+ 180.0+ 175.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+
#> [111] 180.0+ 180.0+ 180.0+  15.0+ 180.0+  12.0+ 134.0+   8.0    2.0  180.0+
#> [121] 180.0+ 180.0+ 140.0    1.0  165.0  180.0+ 180.0+ 180.0+   8.0+ 180.0+
#> [131] 180.0+   0.5  180.0+ 180.0+ 180.0+ 166.0+   4.0+ 147.0+ 180.0+ 180.0+
#> [141]   4.0+ 180.0+   9.0+   1.0  180.0+   2.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [151] 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+ 180.0+   0.5 
#> [161] 180.0+ 161.0+ 171.0+ 180.0+ 180.0+   3.0    1.0  180.0+ 180.0+ 180.0+
#> [171]  10.0+ 180.0+ 180.0+  17.0   45.0    3.0+  19.0  180.0+   9.0+ 172.0+
#> [181]  24.0  180.0+   1.0+ 180.0+ 180.0+  77.0   13.0+ 180.0+ 170.0  180.0+
#> [191]   7.0    7.0+   6.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+  30.0  180.0+
#> [201] 180.0+  28.0   13.0+   5.0   18.0    5.0+ 180.0+ 180.0+   1.0  180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+  22.0 
#> [221] 180.0+  84.0    7.0+ 180.0+ 180.0+   1.0    4.0+ 167.0    6.0+ 180.0+
#> [231]  17.0   12.0  180.0+ 180.0+  14.0+  36.0  180.0+   3.0+ 180.0+  12.0 
#> [241] 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+  12.0+ 180.0+ 180.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+   9.0    3.0  180.0+ 180.0+  11.0+   2.0+
#> [261]  18.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0  180.0+  13.0  180.0+
#> [271] 179.0+ 166.0+  14.0+   3.0    3.0+ 180.0+ 180.0+   7.0+   5.0   16.0 
#> [281]   1.0  180.0+ 180.0+ 180.0+ 180.0+  79.0   15.0+   4.0+  15.0  180.0+
#> [291] 180.0+ 174.0+ 180.0+ 180.0+ 180.0+   3.0  175.0  180.0+  10.0  180.0+
#> [301] 180.0+ 180.0+  19.0+  12.0   99.0  180.0+ 180.0+  11.0+ 180.0+  18.0 
#> [311] 180.0+ 152.0+ 180.0+  93.0   21.0+ 180.0+   1.0    4.0  150.0  180.0+
#> [321] 180.0+ 180.0+ 171.0  180.0+ 174.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+
#> [331]  14.0+ 180.0+   7.0+  45.0    5.0+   3.0+ 180.0+ 180.0+ 180.0+  97.0 
#> [341] 180.0+   7.0  180.0+ 180.0+  18.0  180.0+ 180.0+   8.0+ 123.0   51.0 
#> [351] 180.0+   1.0    1.0   60.0   76.0  180.0+ 132.0   10.0+ 180.0+ 180.0+
#> [361] 162.0    7.0+ 180.0+  12.0  180.0+ 152.0  180.0+ 180.0+ 180.0+ 180.0+
#> [371] 180.0+ 180.0+  28.0  180.0+ 180.0+  16.0+ 180.0+ 180.0+  16.0+ 180.0+
#> [381]   7.0+  15.0   13.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+
#> [391]  20.0  180.0+   0.5  180.0+ 180.0+ 180.0+   3.0   87.0   12.0  180.0+
#> [401]   4.0+  58.0  180.0+   3.0    2.0  180.0+  14.0+ 180.0+   8.0+ 179.0+
#> [411]   1.0  159.0   15.0  180.0+  10.0  180.0+ 180.0+   4.0+ 180.0+  10.0 
#> [421]  57.0  180.0+   5.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+  34.0 
#> [431] 177.0+ 180.0+   5.0   11.0+   4.0+   7.0  180.0+  10.0  180.0+   3.0 
#> [441] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  17.0+ 180.0+   7.0    0.5  180.0+
#> [451]  46.0  180.0+   4.0  180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+  33.0 
#> [461] 180.0+   1.0  180.0+  79.0  168.0+ 180.0+ 180.0+ 176.0+  18.0    7.0 
#> [471]   8.0+   7.0  180.0+  32.0  180.0+ 180.0+ 172.0  119.0  180.0+   8.0 
#> [481] 180.0+ 180.0+   1.0   80.0  180.0+   4.0+ 152.0+   3.0   32.0    6.0 
#> [491] 180.0+   3.0+ 180.0+ 180.0+   1.0    4.0    4.0    3.0+   2.0+ 180.0+
#> [501]   1.0    1.0   43.0    3.0  180.0+   6.0  180.0+  71.0    8.0   40.0 
#> [511]  17.0  161.0   10.0+ 180.0+  93.0  118.0  173.0  180.0+   7.0+  22.0 
#> [521]  15.0+   5.0+ 180.0+ 171.0+ 166.0+  71.0   20.0+   3.0+  10.0   85.0 
#> [531]  10.0    6.0  180.0+   5.0  180.0+ 180.0+ 108.0  180.0+ 125.0  180.0+
#> [541] 180.0+   4.0    6.0    9.0+ 180.0+ 180.0+ 103.0  180.0+ 169.0   70.0 
#> [551] 180.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0    8.0+  16.0  180.0+ 180.0+
#> [561] 180.0+ 180.0+   2.0  167.0    3.0+  62.0  180.0+  38.0   90.0  180.0+
#> [571] 180.0+ 180.0+  89.0    4.0   71.0    1.0   19.0   30.0  154.0  180.0+
#> [581] 180.0+   4.0+ 180.0+  16.0+   5.0+   4.0+ 180.0+ 180.0+   3.0   88.0 
#> [591]   8.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0  174.0 
#> [601]   6.0   70.0   43.0  180.0+ 180.0+ 180.0+  14.0    3.0   13.0  180.0+
#> [611] 180.0+  92.0  180.0+  38.0    3.0+  62.0   20.0    4.0   65.0   11.0 
#> [621] 180.0+  46.0  115.0    3.0+   8.0+ 180.0+   4.0    4.0  119.0  180.0+
#> [631]   8.0   29.0  180.0+  14.0    1.0+ 180.0+  25.0  145.0    3.0   24.0 
#> [641]  50.0  126.0  180.0+ 180.0+   4.0    1.0   89.0   75.0    3.0+   1.0 
#> [651] 158.0   74.0  168.0    7.0    4.0    0.5  180.0+   4.0    1.0+   2.0 
#> [661] 179.0+   8.0+ 180.0+  12.0    8.0   53.0    7.0+   0.5   69.0    2.0 
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
#>    0.821297 
```
