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
#> min 0.00331    45   2.822 0.1193       6
#> 1se 0.06496    13   2.934 0.1185       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      0        180        0   121
#>   [7,]  35   2      1          1        1   112
#>   [8,]  38  13      1          0        1   161
#>   [9,]  38   2      0        115        0   150
#>  [10,]  36   1      0        180        1   155
#>  [11,]  38  12      1          8        1   120
#>  [12,]  36   5      1          0        1   115
#>  [13,]  38  12      1         11        1    92
#>  [14,]  40  12      1          9        0   153
#>  [15,]  42   3      1          1        1   130
#>  [16,]  37   1      1          0        1   146
#>  [17,]  40   2      1          1        1   148
#>  [18,]  42   2      0        180        1   100
#>  [19,]  38   5      1          3        0   125
#>  [20,]  42   2      0          2        0   140
#>  [21,]  40  11      1         10        1   120
#>  [22,]  42   2      0        180        0   100
#>  [23,]  41   2      1          1        0   166
#>  [24,]  40   1      1          0        1   145
#>  [25,]  43   4      1          0        1   130
#>  [26,]  42   4      0        180        0   162
#>  [27,]  42  15      1         13        1   125
#>  [28,]  40   3      1          1        0   170
#>  [29,]  42  12      1         10        1   170
#>  [30,]  43   2      1          1        1   116
#>  [31,]  42   2      0        180        1   124
#>  [32,]  44   5      1          1        0   170
#>  [33,]  45   3      0        180        1   154
#>  [34,]  41  10      1          8        0   150
#>  [35,]  44   3      0        180        0   141
#>  [36,]  45   9      1          7        0   110
#>  [37,]  45   6      0        180        1   170
#>  [38,]  41   5      1          4        1   141
#>  [39,]  46  15      0        180        0   120
#>  [40,]  47   4      1          3        0   118
#>  [41,]  48  15      0        180        1   160
#>  [42,]  45   3      0        150        0   130
#>  [43,]  46   7      1          2        0   166
#>  [44,]  43  29      0        180        1   180
#>  [45,]  45   4      1          0        0   124
#>  [46,]  43  10      0        180        0   185
#>  [47,]  47   6      1          0        1   116
#>  [48,]  46  13      1         10        0   100
#>  [49,]  44   0      1          0        1    96
#>  [50,]  47   4      1          3        1   160
#>  [51,]  43   3      1          0        1   124
#>  [52,]  45   5      0          5        0   141
#>  [53,]  46   6      1          0        1   100
#>  [54,]  44   4      1          0        1   114
#>  [55,]  45   5      0        180        1   190
#>  [56,]  46   5      1          3        0   130
#>  [57,]  46   4      0        180        1   121
#>  [58,]  44   2      0        180        0   142
#>  [59,]  47   3      1          1        1   120
#>  [60,]  48   3      0        180        0   154
#>  [61,]  47   5      1          3        1   130
#>  [62,]  47   9      1          6        0   170
#>  [63,]  46   3      1          0        1   119
#>  [64,]  49   4      0        180        0   117
#>  [65,]  47  10      0         10        1   140
#>  [66,]  47   7      0        180        0   145
#>  [67,]  50   4      1          1        0   125
#>  [68,]  46   3      1          1        1   140
#>  [69,]  46   9      1          9        1   122
#>  [70,]  51   1      0          1        1   145
#>  [71,]  49  15      1         11        1   160
#>  [72,]  47   2      0        180        0   150
#>  [73,]  49  23      0        179        1   112
#>  [74,]  46   6      1          0        1   156
#>  [75,]  52   2      0        180        1   170
#>  [76,]  50   4      0          4        1   100
#>  [77,]  51   3      1          2        0   113
#>  [78,]  50   1      1          0        0   150
#>  [79,]  50   9      0        180        0   130
#>  [80,]  49   7      1          4        1    90
#>  [81,]  47   8      0        180        0   160
#>  [82,]  46   3      0        180        1   120
#>  [83,]  50   4      1          1        0   150
#>  [84,]  48   7      1          0        1   110
#>  [85,]  53   8      0         36        1   160
#>  [86,]  48  17      1         10        0   111
#>  [87,]  52   4      1          4        0   152
#>  [88,]  49   9      1          3        0   102
#>  [89,]  49  15      0        180        1   160
#>  [90,]  54  17      1         12        1   102
#>  [91,]  53   5      0         77        0   159
#>  [92,]  53   7      1          0        0   199
#>  [93,]  54   6      1          3        0   129
#>  [94,]  50   2      0          5        1   106
#>  [95,]  50  14      1         13        0   170
#>  [96,]  48   3      1          2        0   150
#>  [97,]  51  25      1          1        0   202
#>  [98,]  49   5      1          2        1   150
#>  [99,]  52  14      1          7        1   200
#> [100,]  48   6      0        180        0   160
#> [101,]  48  11      1         10        0   120
#> [102,]  53   4      1          0        1   156
#> [103,]  51  13      0         99        1   160
#> [104,]  55   3      1          1        0   150
#> [105,]  52   7      1          2        0   154
#> [106,]  55   6      1          2        1   114
#> [107,]  54   9      1          1        0   130
#> [108,]  55   4      1          2        0   150
#> [109,]  52   4      0        180        1   180
#> [110,]  51  13      1         11        0   145
#> [111,]  50   5      1          4        1   150
#> [112,]  54   4      1          0        1   121
#> [113,]  55  28      1         13        1   160
#> [114,]  50   7      1          1        0   156
#> [115,]  50   7      1          0        1   127
#> [116,]  56   4      1          1        1   130
#> [117,]  52   5      0        175        1   117
#> [118,]  55   1      0        180        0   127
#> [119,]  54   1      0        180        0   162
#> [120,]  55   5      1          4        1   120
#> [121,]  53  18      1          9        1   150
#> [122,]  54   3      0        180        1   180
#> [123,]  55   6      0        180        0   170
#> [124,]  53  10      1          9        0   172
#> [125,]  52  16      1         14        0   170
#> [126,]  53   4      0        180        1   150
#> [127,]  55   6      0        180        1   100
#> [128,]  54  12      1          0        1   190
#> [129,]  55   2      0        134        1   140
#> [130,]  55   1      0          2        0   130
#> [131,]  57   3      0          3        0   120
#> [132,]  54   7      1          2        0   129
#> [133,]  54   2      1          1        0   135
#> [134,]  54   2      1          1        1   176
#> [135,]  57   5      1          3        1   138
#> [136,]  57   1      0        180        1   156
#> [137,]  57   1      0          1        1   100
#> [138,]  56  14      1         11        0   130
#> [139,]  57  10      0        180        1   170
#> [140,]  54   5      0        180        1   108
#> [141,]  57   0      0          0        1   150
#> [142,]  59   3      1          1        0   172
#> [143,]  57   4      0        180        1   119
#> [144,]  58   6      1          0        1    90
#> [145,]  53  15      1         10        1   130
#> [146,]  55   9      1          2        1   147
#> [147,]  56   5      0          5        1   150
#> [148,]  54  23      1          8        0   120
#> [149,]  57   4      1          2        1   185
#> [150,]  53   4      0        147        1   145
#> [151,]  53   7      1          0        1   120
#> [152,]  57  11      1         10        1   129
#> [153,]  55   3      1          2        0   140
#> [154,]  54   7      1          0        1   141
#> [155,]  56   4      0          4        0   164
#> [156,]  58   9      1          0        1   180
#> [157,]  55   5      1          0        0   140
#> [158,]  56   7      1          5        1   120
#> [159,]  55   2      0          2        0   106
#> [160,]  59   9      1          1        1   125
#> [161,]  57   1      0        180        0   148
#> [162,]  60  11      1          9        0   106
#> [163,]  59   3      0        180        0   120
#> [164,]  58   4      1          0        1   160
#> [165,]  57   2      0          2        1   120
#> [166,]  60   5      1          1        0   138
#> [167,]  55   5      1          0        1   160
#> [168,]  59   5      0        180        1   155
#> [169,]  59   4      1          0        1   152
#> [170,]  58   4      1          3        0   120
#> [171,]  59   2      1          1        0   140
#> [172,]  61   4      1          3        0   151
#> [173,]  61   3      1          2        1   102
#> [174,]  58   1      0          1        1   100
#> [175,]  61  20      1         13        0   130
#> [176,]  58  10      0         10        1   150
#> [177,]  57   4      1          3        0   138
#> [178,]  61   3      0         17        0   143
#> [179,]  56  14      0         45        0   130
#> [180,]  57   3      1          2        0   120
#> [181,]  58  19      1         13        1   140
#> [182,]  56  13      1          6        1   158
#> [183,]  56  18      1         11        1   165
#> [184,]  59   9      1          0        1    80
#> [185,]  58  11      0        172        1   135
#> [186,]  61  13      1         12        1   130
#> [187,]  59  11      1          8        1   190
#> [188,]  57   1      0          1        0   126
#> [189,]  59   5      1          2        0   182
#> [190,]  59  10      0        180        0   160
#> [191,]  61  13      0         13        0   210
#> [192,]  58   8      1          5        0   152
#> [193,]  62  10      1          0        1   153
#> [194,]  62   7      1          2        1   180
#> [195,]  57   3      1          0        0   100
#> [196,]  61  18      0        170        0   140
#> [197,]  58   8      1          3        1   150
#> [198,]  57   7      0        169        0   180
#> [199,]  61   7      0          7        1   150
#> [200,]  61   6      0          6        0   134
#> [201,]  59  13      1          2        0   198
#> [202,]  57  12      1          9        1   120
#> [203,]  60  17      1          8        1   140
#> [204,]  62   4      1          3        0   173
#> [205,]  59  16      1          9        1   133
#> [206,]  63   6      0         28        1   120
#> [207,]  61  13      0         13        0   120
#> [208,]  61   5      0          5        1   110
#> [209,]  57  18      1          9        1    93
#> [210,]  61   5      0          5        1   160
#> [211,]  58  11      1          9        0   179
#> [212,]  57   2      1          1        0   159
#> [213,]  63   3      1          1        0   180
#> [214,]  63   1      0        180        1   130
#> [215,]  61   7      0        180        0   135
#> [216,]  63   4      1          3        0   222
#> [217,]  62   3      0        180        1   105
#> [218,]  63  15      1         10        1   126
#> [219,]  60  18      1         13        0   132
#> [220,]  59   8      0        180        1   140
#> [221,]  62   7      0          7        0   150
#> [222,]  59   1      0         22        1   162
#> [223,]  59   5      1          1        0   148
#> [224,]  60   7      1          1        1    90
#> [225,]  65  13      0        180        1   100
#> [226,]  63   1      0          1        0   130
#> [227,]  62   6      0        180        0   170
#> [228,]  59   4      0          4        0   149
#> [229,]  64  10      1          9        0   160
#> [230,]  62   6      0          6        0   120
#> [231,]  63  12      1         10        0   200
#> [232,]  60   8      0         17        1   130
#> [233,]  66   1      1          0        1   120
#> [234,]  64   6      1          0        1   140
#> [235,]  65  36      1         11        0   140
#> [236,]  63   4      1          3        0   162
#> [237,]  61  10      1          2        1   194
#> [238,]  64  32      1          9        1   160
#> [239,]  63   7      0        180        0   120
#> [240,]  66   5      1          0        1   110
#> [241,]  65  10      1          8        1   120
#> [242,]  64   0      0          0        1    90
#> [243,]  61  12      1         11        0   154
#> [244,]  61   4      0        180        1   113
#> [245,]  65   3      0        180        1   190
#> [246,]  63  16      1          7        1   110
#> [247,]  66   6      1          1        1   130
#> [248,]  62   3      1          1        1   199
#> [249,]  65   6      0          9        0   112
#> [250,]  65   3      1          0        1    80
#> [251,]  63   5      1          4        0   170
#> [252,]  67  11      0         11        1   100
#> [253,]  64   2      0          2        0   201
#> [254,]  61  15      1         10        0   130
#> [255,]  63   9      1          8        1   160
#> [256,]  63   3      1          2        0   120
#> [257,]  65   8      1          0        1   140
#> [258,]  67   6      0        180        1   170
#> [259,]  65  15      1         11        1   160
#> [260,]  68   5      1          4        1   150
#> [261,]  64  13      1         12        1   150
#> [262,]  64   6      1          0        1   125
#> [263,]  66   7      1          0        1   115
#> [264,]  66  13      1          0        0   118
#> [265,]  64  14      1         13        1   150
#> [266,]  65   3      0          3        0   105
#> [267,]  64   0      0          0        1   148
#> [268,]  66   3      1          0        1   135
#> [269,]  67   8      1          1        1   130
#> [270,]  63  10      0         16        1   160
#> [271,]  64   1      0          1        1   120
#> [272,]  63   8      1          1        1   162
#> [273,]  63   1      1          0        1   155
#> [274,]  68  11      0        180        0   160
#> [275,]  66  12      1         10        1   150
#> [276,]  65  15      1         12        1   150
#> [277,]  66  11      1          0        0   100
#> [278,]  66  15      1         13        1   160
#> [279,]  63   2      0        180        0   150
#> [280,]  65  11      1          6        0   130
#> [281,]  69  21      1         10        0   180
#> [282,]  69   6      0        180        1   100
#> [283,]  65   8      1          0        1    90
#> [284,]  68  10      1         10        1   150
#> [285,]  65   6      0          6        0    80
#> [286,]  65  10      1          1        1   148
#> [287,]  66  19      1         12        1   150
#> [288,]  67  12      1         12        0   160
#> [289,]  69   6      0         99        1   140
#> [290,]  65   4      1          1        0   130
#> [291,]  66   4      0        180        1   130
#> [292,]  70  15      1         12        1   132
#> [293,]  64  11      0         11        0   125
#> [294,]  64   4      0        180        1   140
#> [295,]  67   2      0         18        0   131
#> [296,]  68   4      1          0        1   160
#> [297,]  69   4      1          3        1   150
#> [298,]  65  13      1         12        1   130
#> [299,]  69  17      1         10        0   140
#> [300,]  69   8      0         93        0   140
#> [301,]  64  21      0         21        1   155
#> [302,]  66   6      0        180        0   140
#> [303,]  71   3      0          5        0   112
#> [304,]  70   7      1          0        1   190
#> [305,]  71  20      1          0        1   160
#> [306,]  67   2      0        180        0   128
#> [307,]  66   9      1          3        1   151
#> [308,]  66   1      1          1        1   165
#> [309,]  70   4      1          0        1   180
#> [310,]  69   8      0        180        1   153
#> [311,]  70  14      0        171        0   166
#> [312,]  66   4      0        180        0   130
#> [313,]  67  10      1          9        0   200
#> [314,]  67   6      1          4        0   130
#> [315,]  69   0      0          0        1   148
#> [316,]  65   2      0        180        0   130
#> [317,]  68   7      1          0        1   150
#> [318,]  69   3      1          2        0   151
#> [319,]  67  14      1         13        0   130
#> [320,]  69   8      0        180        1   180
#> [321,]  71   7      0          7        0   230
#> [322,]  66   2      0          2        1   228
#> [323,]  71   6      0         45        1   158
#> [324,]  69   5      0          5        1   142
#> [325,]  71   3      0        103        0   133
#> [326,]  69   3      0          3        1   130
#> [327,]  70  22      1         13        0   103
#> [328,]  67   1      0         36        1   104
#> [329,]  67   5      0          5        0   130
#> [330,]  68   6      0        180        0   145
#> [331,]  69   8      1          5        1   195
#> [332,]  69   6      1          4        1   174
#> [333,]  72   3      1          0        1   132
#> [334,]  72   7      0          7        1   110
#> [335,]  69   8      1          7        1   108
#> [336,]  67   3      0        180        0   110
#> [337,]  66   2      1          1        0   123
#> [338,]  69  19      0        180        0   130
#> [339,]  68  18      0         18        1   100
#> [340,]  67  14      0        172        1   140
#> [341,]  66   2      0        180        0   130
#> [342,]  68   2      0          7        1   130
#> [343,]  69   8      1          2        0   121
#> [344,]  67  13      1          9        0   130
#> [345,]  70   3      0        123        0   130
#> [346,]  70   9      0        180        1   142
#> [347,]  68   3      0         19        0   135
#> [348,]  67  12      1          8        0   120
#> [349,]  69   1      0          1        1   110
#> [350,]  67   4      0         60        1   136
#> [351,]  69   5      0         76        0   120
#> [352,]  67   8      1          0        1   130
#> [353,]  72  13      1         11        1   195
#> [354,]  68  10      1          8        1   160
#> [355,]  66  24      1         13        0   130
#> [356,]  70  35      1          0        1   105
#> [357,]  70  11      0        180        1   210
#> [358,]  72  19      1          8        0   120
#> [359,]  67   8      0        180        1   170
#> [360,]  67   9      0        180        0   158
#> [361,]  72   2      0          2        1   100
#> [362,]  67   4      1          1        0   134
#> [363,]  72   6      1          5        0   115
#> [364,]  71   1      0        173        1   188
#> [365,]  69   3      0        180        0   220
#> [366,]  71   3      1          2        0   150
#> [367,]  68   4      1          3        0   210
#> [368,]  72   5      0         28        0   120
#> [369,]  71   5      0        180        0   191
#> [370,]  73   6      0        180        1   117
#> [371,]  69   8      1          1        0   164
#> [372,]  68   7      0        180        1   130
#> [373,]  72  16      1          1        1   130
#> [374,]  70   4      0        180        0   180
#> [375,]  69   1      1          0        0   155
#> [376,]  73   6      1          0        1   270
#> [377,]  72   8      1          1        1   150
#> [378,]  71   2      1          0        1   180
#> [379,]  68  15      1         13        1   130
#> [380,]  70   3      0          3        1   159
#> [381,]  70  13      1          9        0   100
#> [382,]  72   6      0        180        1   130
#> [383,]  74   8      1          0        1    85
#> [384,]  74  20      0         20        1   180
#> [385,]  68   9      0        180        1   120
#> [386,]  71  20      1         10        0   140
#> [387,]  74   0      1          0        1    90
#> [388,]  73   3      1          0        1   136
#> [389,]  71  17      1         11        0   160
#> [390,]  71   8      1          7        0   149
#> [391,]  71   3      1          2        1   190
#> [392,]  73  10      1          8        0   106
#> [393,]  69  12      1          1        1   149
#> [394,]  70  26      1         11        1   120
#> [395,]  72   5      1          3        1   160
#> [396,]  73   6      0        180        0   110
#> [397,]  74   3      0          3        1   150
#> [398,]  71  13      1          8        0   121
#> [399,]  70   4      1          0        1   140
#> [400,]  74   7      1          0        1   117
#> [401,]  72  10      1          8        1   153
#> [402,]  69   7      0        180        1   144
#> [403,]  72  15      1         13        0   156
#> [404,]  70   8      0          8        0   120
#> [405,]  71  10      1          9        1   120
#> [406,]  75   1      0          1        0   133
#> [407,]  73  10      1          9        1   146
#> [408,]  72  10      1          9        1   160
#> [409,]  74  15      1          9        1   179
#> [410,]  71   2      0         10        1   112
#> [411,]  73   1      0          1        1    80
#> [412,]  75   9      1          7        0   140
#> [413,]  75  13      1          1        1   130
#> [414,]  71   4      0          4        0   134
#> [415,]  73  10      1          8        0   120
#> [416,]  70   7      1          4        0   184
#> [417,]  72   1      1          1        0   168
#> [418,]  73  10      0        180        0   162
#> [419,]  72  11      0         11        1   140
#> [420,]  73   5      1          3        1   112
#> [421,]  75   1      0        180        1   140
#> [422,]  72   4      1          0        1   197
#> [423,]  71   3      1          0        0   144
#> [424,]  73   5      0        180        0   126
#> [425,]  73   4      0        180        0   124
#> [426,]  74  34      1          8        1   233
#> [427,]  76   3      1          0        1   120
#> [428,]  72   3      0        180        0   160
#> [429,]  77  11      0         11        1   150
#> [430,]  75   3      1          1        0   180
#> [431,]  72   7      1          2        0   142
#> [432,]  71  16      0        180        0   140
#> [433,]  73  10      1         10        0   124
#> [434,]  74   7      0        180        1   150
#> [435,]  74   2      1          1        0   140
#> [436,]  76   8      1          0        1   141
#> [437,]  74  19      1          4        1   200
#> [438,]  75  23      1         14        1   110
#> [439,]  74   2      0        180        0   190
#> [440,]  72   4      0         85        1   120
#> [441,]  72   4      1          3        0   160
#> [442,]  75   4      1          0        1   122
#> [443,]  75   7      0          7        0   190
#> [444,]  73  13      1         11        0   195
#> [445,]  75  12      0         12        1   160
#> [446,]  74   8      1          0        1   105
#> [447,]  75   4      1          2        1   188
#> [448,]  74   6      0        180        0   160
#> [449,]  76   4      0          4        1   155
#> [450,]  75   1      0          1        1   125
#> [451,]  73   1      0         52        1   105
#> [452,]  73   0      0        180        0   156
#> [453,]  72   5      0        180        0   120
#> [454,]  76   5      0        180        0   185
#> [455,]  74  10      1          0        1   135
#> [456,]  76   5      1          0        1   167
#> [457,]  74   8      1          8        1   170
#> [458,]  75   9      0        180        1   140
#> [459,]  73  33      1         12        1   175
#> [460,]  77   5      1          0        0   123
#> [461,]  77  12      1          9        1   100
#> [462,]  73  10      1          9        0   146
#> [463,]  77  12      0        180        0   130
#> [464,]  78   5      1          0        1   170
#> [465,]  74   6      0         79        1   140
#> [466,]  75   3      1          1        1   171
#> [467,]  75   6      0        180        0   150
#> [468,]  79  10      1          8        0   190
#> [469,]  78  18      0         18        1   144
#> [470,]  77   3      0        180        0   110
#> [471,]  76  29      0         47        0    90
#> [472,]  73   8      1          1        1   162
#> [473,]  73  11      1          2        1   110
#> [474,]  74   2      0        180        0   100
#> [475,]  78   7      0          7        1   133
#> [476,]  74  15      0        180        1   172
#> [477,]  76  13      1          1        1   170
#> [478,]  78  32      1          9        1   198
#> [479,]  79   6      0        180        0   170
#> [480,]  80  10      1          6        1   147
#> [481,]  78  13      1          5        0   130
#> [482,]  75  12      1          1        1   120
#> [483,]  78  15      0        180        1   270
#> [484,]  76   1      0          1        1    83
#> [485,]  79   4      0         80        0   145
#> [486,]  78  12      1          9        0   150
#> [487,]  75   4      1          0        0   212
#> [488,]  77   2      1          0        1   143
#> [489,]  78  10      0        180        1   130
#> [490,]  76  11      1          0        0   120
#> [491,]  75  11      1          4        0   162
#> [492,]  76   7      0         29        1   150
#> [493,]  78   6      1          0        1   240
#> [494,]  76   3      1          0        1   140
#> [495,]  78  11      1          1        1   140
#> [496,]  79  11      0        180        0   160
#> [497,]  76   4      0          4        1   160
#> [498,]  79   4      0          4        1   125
#> [499,]  76  10      1          8        0   180
#> [500,]  76  12      1         10        1   127
#> [501,]  75   2      1          1        1   204
#> [502,]  76   1      0          1        1   140
#> [503,]  78   7      1          0        1   110
#> [504,]  79   3      0          3        0   120
#> [505,]  77   6      0          6        1   144
#> [506,]  79   4      1          0        1   120
#> [507,]  81   1      0        180        0   120
#> [508,]  80  15      1         12        1   150
#> [509,]  78   4      0         59        1   112
#> [510,]  76   7      0        161        0   151
#> [511,]  80  15      1          0        1    90
#> [512,]  81   4      1          2        1   126
#> [513,]  79  28      0        164        0   100
#> [514,]  80   6      0        173        1   160
#> [515,]  79   1      0         37        1   140
#> [516,]  81   3      0        180        0   184
#> [517,]  77  13      1          0        1   190
#> [518,]  78  15      0         15        0   165
#> [519,]  79   3      0          3        1   101
#> [520,]  78  26      1          5        0   194
#> [521,]  76   1      0        166        0   131
#> [522,]  81   4      1          1        1   104
#> [523,]  78  20      1          0        1   109
#> [524,]  78   3      1          1        1   152
#> [525,]  77  10      1          8        1   130
#> [526,]  82   3      1          1        1   144
#> [527,]  77   5      0         85        0   188
#> [528,]  80   2      1          1        0   168
#> [529,]  80   6      1          0        1   119
#> [530,]  78   2      0        180        0   148
#> [531,]  80   5      0          5        1   130
#> [532,]  82   1      1          0        1    82
#> [533,]  79  10      0        180        1   150
#> [534,]  77   4      0        180        1    98
#> [535,]  84  22      1         10        0   180
#> [536,]  80   6      0          6        1   110
#> [537,]  82   5      0        180        0   110
#> [538,]  83   5      0        180        0   148
#> [539,]  79   7      1          6        0   130
#> [540,]  83   4      0        103        0    97
#> [541,]  81   5      0        177        0    41
#> [542,]  78  23      1         10        1   145
#> [543,]  78   9      1          4        1   120
#> [544,]  79   1      0        180        1   170
#> [545,]  81  15      0        180        1   140
#> [546,]  84   5      1          1        1    85
#> [547,]  81  20      1          9        0   170
#> [548,]  81  16      0         16        1   110
#> [549,]  80  11      1          8        0   110
#> [550,]  81   8      0        180        0   146
#> [551,]  80   8      1          7        0   160
#> [552,]  79   7      0        177        0   197
#> [553,]  85   4      0        180        0    90
#> [554,]  81   2      1          1        0   198
#> [555,]  84   4      0        167        0   198
#> [556,]  80   3      1          1        1   230
#> [557,]  82  23      1          0        0   110
#> [558,]  84   4      0          4        1    85
#> [559,]  81   1      0          1        1   150
#> [560,]  84   1      0         38        1   205
#> [561,]  83   3      0        180        0   174
#> [562,]  81   4      0         90        1   138
#> [563,]  79   9      1          8        0   150
#> [564,]  85   3      1          2        1   160
#> [565,]  80  13      1          8        1   140
#> [566,]  84   4      0         89        1   129
#> [567,]  80   2      1          0        1   130
#> [568,]  82  19      0         19        0   120
#> [569,]  80  30      1         13        0   220
#> [570,]  83   9      0        180        0   198
#> [571,]  83   3      0        114        0    98
#> [572,]  81  14      1         12        1   128
#> [573,]  83   2      0        154        0   130
#> [574,]  82   0      0          2        1   100
#> [575,]  85   9      1          6        1   160
#> [576,]  83   1      0        180        0   160
#> [577,]  81   4      0          4        0   175
#> [578,]  84  15      1         13        1   110
#> [579,]  81   1      0          1        1   145
#> [580,]  81  12      0         12        1   163
#> [581,]  82  16      1          8        0   103
#> [582,]  82   5      1          0        1   146
#> [583,]  81   4      0          4        0   160
#> [584,]  81  19      1         14        0   120
#> [585,]  82  15      1          0        0   183
#> [586,]  83   7      0        126        0   135
#> [587,]  86   8      0          8        1   132
#> [588,]  86   3      0          3        1   140
#> [589,]  82   9      0        180        1   134
#> [590,]  84   3      0        180        1   120
#> [591,]  81  13      0        180        0   152
#> [592,]  85   3      0          3        1   118
#> [593,]  81   2      1          0        1   118
#> [594,]  81   4      0        180        0   160
#> [595,]  83   9      0        180        1   149
#> [596,]  82   1      0        180        1   193
#> [597,]  83   4      0          4        0   130
#> [598,]  87   2      0          5        1   137
#> [599,]  86  12      1          0        1   132
#> [600,]  82  14      1         11        1   103
#> [601,]  86   6      1          0        1   140
#> [602,]  84  16      0         70        1   150
#> [603,]  83  19      0         43        0   150
#> [604,]  86   2      0        180        1   169
#> [605,]  88  14      1          3        1   130
#> [606,]  84   3      0          3        1   121
#> [607,]  83  13      1         12        0   170
#> [608,]  84   7      1          2        0   148
#> [609,]  87   2      0        180        0   113
#> [610,]  84   9      0         92        1   110
#> [611,]  84   3      0        180        1   170
#> [612,]  86   4      0         38        1   122
#> [613,]  86  13      0        177        0   163
#> [614,]  84  13      0         62        1   100
#> [615,]  88   4      0          4        0   100
#> [616,]  88   4      0          4        1   115
#> [617,]  85  22      0         22        1   184
#> [618,]  86   9      1          7        1   142
#> [619,]  88   3      0        115        0   110
#> [620,]  88   2      0        180        1    68
#> [621,]  83   3      0          3        1   130
#> [622,]  87   8      0          8        1   157
#> [623,]  86  15      1          8        1   109
#> [624,]  89   4      0          4        1   153
#> [625,]  89   5      0        119        1   140
#> [626,]  87   1      0          1        0   170
#> [627,]  85   8      0          8        1   136
#> [628,]  84   2      0        110        1   174
#> [629,]  87  29      0         29        1    97
#> [630,]  87  15      1          9        1   138
#> [631,]  84   0      0        180        1   136
#> [632,]  89  10      0         46        1   170
#> [633,]  90  14      0         14        1   100
#> [634,]  88   1      0          1        0   135
#> [635,]  86   4      0        180        1   145
#> [636,]  91  10      0        145        0   135
#> [637,]  86   3      1          0        1    80
#> [638,]  88   7      0         24        0   119
#> [639,]  88   8      0         50        1   154
#> [640,]  87   6      0        126        1   168
#> [641,]  86   9      1          7        0   130
#> [642,]  90   4      1          0        0   121
#> [643,]  87   5      0         36        1   150
#> [644,]  90   5      1          0        1   125
#> [645,]  88   3      1          2        0   159
#> [646,]  92   1      0          1        1   167
#> [647,]  91   3      0         33        1   137
#> [648,]  87   7      0         74        1   105
#> [649,]  89  12      1          0        1   130
#> [650,]  89   2      0        168        0   118
#> [651,]  91   5      0        169        1   176
#> [652,]  92   7      0          7        1   110
#> [653,]  89   4      0          4        1   159
#> [654,]  91   0      0          0        0     0
#> [655,]  90  18      0        180        0   188
#> [656,]  91   4      1          0        1   120
#> [657,]  90  19      1         11        1   129
#> [658,]  94   6      0         50        0    78
#> [659,]  91   2      0          2        1   116
#> [660,]  93   8      0        179        1   110
#> [661,]  92   4      0         76        1   149
#> [662,]  90  16      0         16        1   106
#> [663,]  90   3      0         67        0   162
#> [664,]  96   3      0         12        1    97
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+
#>  [11]  12.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+
#>  [31] 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [41] 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+   5.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0 
#>  [71] 179.0+ 180.0+ 179.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+   4.0+ 180.0+ 180.0+ 180.0+
#>  [91]  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+
#> [101] 180.0+ 166.0+  99.0  180.0+   7.0+   6.0+ 180.0+ 180.0+ 180.0+  13.0+
#> [111] 171.0+ 180.0+  28.0  180.0+ 180.0+ 180.0+ 175.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+ 180.0+ 180.0+  16.0  180.0+ 180.0+  12.0+ 134.0+   2.0 
#> [131]   3.0+ 180.0+ 180.0+ 180.0+ 140.0  180.0+   1.0  180.0+ 180.0+ 180.0+
#> [141]   0.5  180.0+ 180.0+ 180.0+ 180.0+  15.0    5.0+ 180.0+   4.0+ 147.0+
#> [151] 180.0+ 180.0+ 180.0+ 180.0+   4.0+   9.0+ 180.0+ 180.0+   2.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [171] 180.0+ 180.0+   3.0    1.0  180.0+  10.0+ 180.0+  17.0   45.0    3.0+
#> [181]  19.0  180.0+ 180.0+   9.0+ 172.0+ 180.0+ 180.0+   1.0+ 180.0+ 180.0+
#> [191]  13.0+   8.0+ 180.0+ 180.0+ 180.0+ 170.0  180.0+ 169.0    7.0    6.0 
#> [201] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0   13.0+   5.0   18.0    5.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221]   7.0+  22.0  180.0+ 180.0+ 180.0+   1.0  180.0+   4.0+ 167.0    6.0+
#> [231] 180.0+  17.0  180.0+ 180.0+  36.0  180.0+  88.0  180.0+ 180.0+ 180.0+
#> [241] 180.0+   0.5   12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0    3.0 
#> [251] 180.0+  11.0+   2.0+ 180.0+ 180.0+   3.0+  15.0  180.0+ 180.0+   5.0+
#> [261]  13.0  180.0+ 179.0+ 166.0+  14.0+   3.0    0.5+   3.0+   8.0   16.0 
#> [271]   1.0  180.0+   1.0+ 180.0+  80.0   15.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [281] 174.0+ 180.0+   8.0+  10.0    6.0  180.0+  19.0+  12.0   99.0  180.0+
#> [291] 180.0+ 180.0+  11.0+ 180.0+  18.0  180.0+ 152.0+ 180.0+ 180.0+  93.0 
#> [301]  21.0+ 180.0+   5.0    7.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+
#> [311] 171.0  180.0+ 174.0+   6.0    0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [321]   7.0+   2.0   45.0    5.0+ 103.0    3.0+ 180.0+  36.0    5.0+ 180.0+
#> [331] 180.0+  97.0  180.0+   7.0    8.0+ 180.0+   2.0+ 180.0+  18.0  172.0+
#> [341] 180.0+   7.0    8.0+  13.0+ 123.0  180.0+  19.0  180.0+   1.0   60.0 
#> [351]  76.0  180.0+ 132.0   10.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [361]   2.0   76.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+
#> [371] 180.0+ 180.0+  16.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+  15.0    3.0+
#> [381]  13.0+ 180.0+ 180.0+  20.0  180.0+  20.0    0.5  180.0+ 180.0+   8.0 
#> [391]   3.0   87.0   12.0  180.0+ 180.0+ 180.0+   3.0  175.0  180.0+ 180.0+
#> [401]  10.0+ 180.0+ 180.0+   8.0+ 179.0+   1.0  180.0+ 159.0  180.0+  10.0 
#> [411]   1.0  180.0+  13.0    4.0+  10.0  104.0+   1.0  180.0+  11.0    5.0 
#> [421] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+ 180.0+  11.0+ 180.0+
#> [431]   7.0  180.0+  10.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  85.0 
#> [441] 180.0+   4.0    7.0  180.0+  12.0  180.0+  46.0  180.0+   4.0    1.0 
#> [451]  52.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+  33.0    5.0 
#> [461] 180.0+ 180.0+ 180.0+ 180.0+  79.0    3.0  180.0+ 180.0+  18.0  180.0+
#> [471]  47.0  180.0+  11.0  180.0+   7.0  180.0+ 180.0+  32.0  180.0+  10.0 
#> [481] 172.0   12.0  180.0+   1.0   80.0  180.0+   4.0+   2.0  180.0+  11.0 
#> [491] 152.0+  29.0  180.0+   3.0+ 180.0+ 180.0+   4.0    4.0   10.0+ 180.0+
#> [501]   2.0+   1.0   43.0    3.0    6.0  138.0  180.0+ 180.0+  59.0  161.0 
#> [511] 180.0+  93.0  164.0  173.0   37.0  180.0+  22.0   15.0+   3.0  171.0+
#> [521] 166.0+  71.0   20.0+   3.0+  10.0  180.0+  85.0   10.0    6.0  180.0+
#> [531]   5.0    1.0  180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+ 103.0 
#> [541] 177.0+  70.0  180.0+ 180.0+ 180.0+ 180.0+  20.0   16.0  180.0+ 180.0+
#> [551] 180.0+ 177.0+ 180.0+ 180.0+ 167.0    3.0+  62.0    4.0    1.0   38.0 
#> [561] 180.0+  90.0  180.0+ 180.0+ 180.0+  89.0  180.0+  19.0   30.0  180.0+
#> [571] 114.0  180.0+ 154.0    2.0  180.0+ 180.0+   4.0+ 180.0+   1.0   12.0 
#> [581]  16.0+   5.0+   4.0+ 180.0+  83.0  126.0    8.0    3.0  180.0+ 180.0+
#> [591] 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0  180.0+ 174.0 
#> [601]   6.0   70.0   43.0  180.0+  14.0    3.0   13.0  180.0+ 180.0+  92.0 
#> [611] 180.0+  38.0  177.0   62.0    4.0+   4.0   22.0   11.0  115.0  180.0+
#> [621]   3.0+   8.0+ 180.0+   4.0  119.0    1.0+   8.0  110.0   29.0  180.0+
#> [631] 180.0+  46.0   14.0    1.0+ 180.0+ 145.0    3.0   24.0   50.0  126.0 
#> [641] 180.0+   4.0   36.0   89.0   75.0    1.0   33.0   74.0  180.0+ 168.0 
#> [651] 169.0    7.0    4.0    0.5  180.0+   4.0  180.0+  50.0    2.0  179.0+
#> [661]  76.0   16.0   67.0   12.0   53.0    7.0+   0.5   69.0    2.0   15.0+
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
#>   0.8247119 
```
