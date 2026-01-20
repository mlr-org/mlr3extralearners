# Cross-Validated GLM with Elastic Net Regularization Survival Learner

Generalized linear models with elastic net regularization. Calls
[`glmnet::cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/cv.glmnet.html)
from package [glmnet](https://CRAN.R-project.org/package=glmnet).

## Initial parameter values

- `family` is set to `"cox"` and cannot be changed.

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`glmnet::predict.cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/predict.cv.glmnet.html).

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    [`glmnet::survfit.cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/survfit.cv.glmnet.html).
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
[`glmnet::glmnet()`](https://rdrr.io/pkg/glmnet/man/glmnet.html). During
prediction, the offset column from the test set is used only if
`use_pred_offset = TRUE` (default), passed via the `newoffset` argument
in
[`glmnet::predict.coxnet()`](https://rdrr.io/pkg/glmnet/man/predict.glmnet.html).
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
[`glmnet::predict.glmnet()`](https://rdrr.io/pkg/glmnet/man/predict.glmnet.html)
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
#> min 0.00332    45   2.638 0.1848       6
#> 1se 0.07857    11   2.798 0.1807       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35  10      1          9        0   106
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  38  12      1          8        1   120
#>  [11,]  36   5      1          0        1   115
#>  [12,]  33   6      1          1        1   115
#>  [13,]  38  16      1         10        0   160
#>  [14,]  40  12      1          9        0   153
#>  [15,]  42   3      1          1        1   130
#>  [16,]  37   1      1          0        1   146
#>  [17,]  40   2      1          1        1   148
#>  [18,]  38   5      1          3        0   125
#>  [19,]  42   2      0          2        0   140
#>  [20,]  40  11      1         10        1   120
#>  [21,]  42   2      0        180        0   100
#>  [22,]  43   3      1          0        1   100
#>  [23,]  41   2      1          1        0   166
#>  [24,]  40   1      1          0        1   145
#>  [25,]  43   4      1          0        1   130
#>  [26,]  42   4      0        180        0   162
#>  [27,]  42  15      1         13        1   125
#>  [28,]  42  12      1         10        1   170
#>  [29,]  43   2      1          1        1   116
#>  [30,]  42   2      0        180        1   124
#>  [31,]  44   5      1          1        0   170
#>  [32,]  45   3      0        180        1   154
#>  [33,]  41  10      1          8        0   150
#>  [34,]  41  13      1          1        0   140
#>  [35,]  45   6      0        180        1   170
#>  [36,]  43   2      0        180        1   140
#>  [37,]  45   2      0        180        1   140
#>  [38,]  46  15      0        180        0   120
#>  [39,]  46   2      1          1        0   126
#>  [40,]  47   4      1          3        0   118
#>  [41,]  48  15      0        180        1   160
#>  [42,]  46   7      1          2        0   166
#>  [43,]  43  29      0        180        1   180
#>  [44,]  45   4      1          0        0   124
#>  [45,]  43  10      0        180        0   185
#>  [46,]  46  13      1         10        0   100
#>  [47,]  43   3      1          0        1   124
#>  [48,]  49   5      0         73        1   136
#>  [49,]  45   5      0          5        0   141
#>  [50,]  46   2      1          1        1   122
#>  [51,]  46   6      1          0        1   100
#>  [52,]  47   2      0        180        0   108
#>  [53,]  46   4      0        180        1   121
#>  [54,]  44   2      0        180        0   142
#>  [55,]  46  15      0        180        1   120
#>  [56,]  45   9      1          0        1   145
#>  [57,]  47   3      1          1        1   120
#>  [58,]  48   3      0        180        0   154
#>  [59,]  48  12      1         11        0   200
#>  [60,]  47  10      0         10        1   140
#>  [61,]  50   1      1          0        1   129
#>  [62,]  48   2      1          0        0   184
#>  [63,]  47   7      0        180        0   145
#>  [64,]  50   4      1          1        0   125
#>  [65,]  50   6      1          2        1   140
#>  [66,]  46   3      1          1        1   140
#>  [67,]  46   9      1          9        1   122
#>  [68,]  49   2      0          2        0   105
#>  [69,]  51   1      0          1        1   145
#>  [70,]  49  15      1         11        1   160
#>  [71,]  47   2      0        180        0   150
#>  [72,]  49  23      0        179        1   112
#>  [73,]  46   6      1          0        1   156
#>  [74,]  50   4      0          4        1   100
#>  [75,]  51   3      1          2        0   113
#>  [76,]  50   1      1          0        0   150
#>  [77,]  50   9      0        180        0   130
#>  [78,]  49   7      1          4        1    90
#>  [79,]  47   8      0        180        0   160
#>  [80,]  47   6      0        180        1   162
#>  [81,]  46   3      0        180        1   120
#>  [82,]  46   1      1          1        0   145
#>  [83,]  50   4      1          1        0   150
#>  [84,]  53   8      0         36        1   160
#>  [85,]  48  17      1         10        0   111
#>  [86,]  47   2      1          1        0   110
#>  [87,]  52   4      1          4        0   152
#>  [88,]  49   9      1          3        0   102
#>  [89,]  49  15      0        180        1   160
#>  [90,]  54  17      1         12        1   102
#>  [91,]  53   5      0         77        0   159
#>  [92,]  51   3      1          1        0   140
#>  [93,]  50   2      0          5        1   106
#>  [94,]  50  10      1          6        0   122
#>  [95,]  50  14      1         13        0   170
#>  [96,]  53   8      1          7        0   160
#>  [97,]  48   3      1          2        0   150
#>  [98,]  51  25      1          1        0   202
#>  [99,]  49   5      1          2        1   150
#> [100,]  53   4      0          4        0   140
#> [101,]  52  14      1          7        1   200
#> [102,]  48   6      0        180        0   160
#> [103,]  48  11      1         10        0   120
#> [104,]  53   4      1          0        1   156
#> [105,]  54   9      1          0        1   138
#> [106,]  55   3      1          1        0   150
#> [107,]  54  23      1         10        0   131
#> [108,]  52   7      1          2        0   154
#> [109,]  55   6      1          2        1   114
#> [110,]  54   9      1          1        0   130
#> [111,]  55   4      1          2        0   150
#> [112,]  51  13      1         11        0   145
#> [113,]  50   5      1          4        1   150
#> [114,]  50   3      0        174        1   153
#> [115,]  55  28      1         13        1   160
#> [116,]  49   6      1          0        1   130
#> [117,]  49   1      0          1        1   110
#> [118,]  50   7      1          1        0   156
#> [119,]  53   8      1          0        1   130
#> [120,]  50   7      1          0        1   127
#> [121,]  56   4      1          1        1   130
#> [122,]  52   5      0        175        1   117
#> [123,]  54   1      0        180        0   162
#> [124,]  54   7      1          0        1   100
#> [125,]  56   2      0        180        0   132
#> [126,]  55   5      1          4        1   120
#> [127,]  52   8      0        180        0   119
#> [128,]  54   3      0        180        1   180
#> [129,]  55   6      0        180        0   170
#> [130,]  52  16      0         16        0   152
#> [131,]  53   4      0        180        1   150
#> [132,]  55   6      0        180        1   100
#> [133,]  54  12      1          0        1   190
#> [134,]  54   3      0        180        0   128
#> [135,]  56   3      0          8        1   139
#> [136,]  54   7      1          2        0   129
#> [137,]  54   2      1          1        0   135
#> [138,]  52   9      1          3        0   170
#> [139,]  57   1      0        180        1   156
#> [140,]  52   2      0        180        0   140
#> [141,]  52  15      1         14        0   130
#> [142,]  57  10      0        180        1   170
#> [143,]  54   5      0        180        1   108
#> [144,]  57   0      0          0        1   150
#> [145,]  57   4      0        180        1   119
#> [146,]  58   6      1          0        1    90
#> [147,]  54  17      1          8        1   227
#> [148,]  55   9      1          2        1   147
#> [149,]  55  13      0        166        1   140
#> [150,]  56   5      0          5        1   150
#> [151,]  54  23      1          8        0   120
#> [152,]  53   4      0        147        1   145
#> [153,]  53   7      1          0        1   120
#> [154,]  58   9      1          0        1   180
#> [155,]  55   5      1          0        0   140
#> [156,]  56   7      1          5        1   120
#> [157,]  58   4      1          0        1   160
#> [158,]  60   5      1          1        0   138
#> [159,]  57   5      0        180        1   130
#> [160,]  58  11      1          9        1   124
#> [161,]  57  10      1          9        0   103
#> [162,]  59   6      1          0        1   140
#> [163,]  59   5      0        180        1   155
#> [164,]  59   4      1          0        1   152
#> [165,]  61   9      0          9        1   160
#> [166,]  58   4      1          3        0   120
#> [167,]  60   0      1          0        1    80
#> [168,]  59   2      1          1        0   140
#> [169,]  58   8      0        161        1   140
#> [170,]  61   4      1          3        0   151
#> [171,]  61   9      1          8        0   150
#> [172,]  61  20      1         13        0   130
#> [173,]  57  13      1         10        0   110
#> [174,]  57   2      1          0        1   116
#> [175,]  58  10      0         10        1   150
#> [176,]  57   4      1          3        0   138
#> [177,]  61   3      0         17        0   143
#> [178,]  56  14      0         45        0   130
#> [179,]  56  13      1          6        1   158
#> [180,]  59   9      1          0        1    80
#> [181,]  55   4      1          3        1   160
#> [182,]  55   9      1          7        1   135
#> [183,]  61   4      1          0        1   115
#> [184,]  56   8      1          8        0   120
#> [185,]  61  13      1         12        1   130
#> [186,]  59  11      1          8        1   190
#> [187,]  57   1      0          1        0   126
#> [188,]  57  15      1         13        1   110
#> [189,]  58   5      1          1        1   135
#> [190,]  59  10      0        180        0   160
#> [191,]  61   8      0         77        0   120
#> [192,]  61  13      0         13        0   210
#> [193,]  58   8      1          5        0   152
#> [194,]  62  10      1          0        1   153
#> [195,]  61  28      1          7        0   133
#> [196,]  58   8      1          3        1   150
#> [197,]  57   7      0        169        0   180
#> [198,]  61   6      0          6        0   134
#> [199,]  59  13      1          2        0   198
#> [200,]  62   4      1          0        0   160
#> [201,]  60  17      1          8        1   140
#> [202,]  58   3      1          0        1   146
#> [203,]  58   2      0         30        0   202
#> [204,]  59   1      0        180        0   155
#> [205,]  59  16      1          9        1   133
#> [206,]  63   6      0         28        1   120
#> [207,]  61  13      0         13        0   120
#> [208,]  61   5      0          5        1   110
#> [209,]  58  11      1          9        0   179
#> [210,]  57   2      1          1        0   159
#> [211,]  62  17      1         10        1   180
#> [212,]  63   3      1          1        0   180
#> [213,]  63   1      0        180        1   130
#> [214,]  63   4      1          3        0   222
#> [215,]  63   4      0        180        1   190
#> [216,]  63  15      1         10        1   126
#> [217,]  64   4      0        180        0   130
#> [218,]  63   4      1          1        0   155
#> [219,]  60  18      1         13        0   132
#> [220,]  59   8      0        180        1   140
#> [221,]  58   9      1          9        0   110
#> [222,]  62   7      0          7        0   150
#> [223,]  59   1      0         22        1   162
#> [224,]  59   4      0        180        0   196
#> [225,]  60   7      0          7        0   140
#> [226,]  60   7      1          1        1    90
#> [227,]  65  13      0        180        1   100
#> [228,]  63   1      0          1        0   162
#> [229,]  62   6      0        180        0   170
#> [230,]  61  15      1         13        0   170
#> [231,]  59   4      0          4        0   149
#> [232,]  60   3      0          3        0   168
#> [233,]  63  12      1         10        0   200
#> [234,]  59  10      0        180        1   130
#> [235,]  60   8      0         17        1   130
#> [236,]  65  36      1         11        0   140
#> [237,]  63   4      1          3        0   162
#> [238,]  66   3      1          1        0   127
#> [239,]  64  32      1          9        1   160
#> [240,]  63   7      0        180        0   120
#> [241,]  66   5      1          0        1   110
#> [242,]  65   8      1          0        0   168
#> [243,]  65  10      1          8        1   120
#> [244,]  60   6      0        180        0   130
#> [245,]  61  12      1         11        0   154
#> [246,]  64   9      0        180        0   150
#> [247,]  61   4      0        180        1   113
#> [248,]  63  16      1          7        1   110
#> [249,]  63  12      0         12        1   150
#> [250,]  62   3      1          1        1   199
#> [251,]  65   6      0          9        0   112
#> [252,]  65   3      1          0        1    80
#> [253,]  63   5      1          4        0   170
#> [254,]  62  13      1         11        0   180
#> [255,]  67  11      0         11        1   100
#> [256,]  64   2      0          2        0   201
#> [257,]  66  18      1          5        0   142
#> [258,]  61  14      1          5        0   140
#> [259,]  61  15      1         10        0   130
#> [260,]  63   3      1          2        0   120
#> [261,]  64  19      1          8        1   160
#> [262,]  65   8      1          0        1   140
#> [263,]  67   6      0        180        1   170
#> [264,]  64  13      1         12        1   150
#> [265,]  64   6      1          0        1   125
#> [266,]  66   7      1          0        1   115
#> [267,]  66  13      1          0        0   118
#> [268,]  64  14      1         13        1   150
#> [269,]  64   0      0          0        1   148
#> [270,]  67   4      1          3        0   130
#> [271,]  66   6      1          0        1   140
#> [272,]  68   1      0        180        1   166
#> [273,]  63   7      1          0        0   162
#> [274,]  67   8      1          1        1   130
#> [275,]  68   5      0          5        1    90
#> [276,]  63  10      0         16        1   160
#> [277,]  66  14      0        180        0   130
#> [278,]  64   1      0          1        1   120
#> [279,]  68  18      0        180        1   260
#> [280,]  65  17      1         14        1   100
#> [281,]  63   8      1          1        1   162
#> [282,]  65  18      1          3        0   120
#> [283,]  63   1      1          0        1   155
#> [284,]  67  11      0         11        0   150
#> [285,]  68  14      0         79        0   172
#> [286,]  66  12      1         10        1   150
#> [287,]  65  15      1         12        1   150
#> [288,]  65   4      1          2        1   145
#> [289,]  66  15      1         13        1   160
#> [290,]  63   2      0        180        0   150
#> [291,]  65  11      1          6        0   130
#> [292,]  69  21      1         10        0   180
#> [293,]  66   9      1          8        0   130
#> [294,]  63   8      0        180        1   120
#> [295,]  68  14      1         13        1   140
#> [296,]  65   1      1          0        0   133
#> [297,]  67   7      1          4        1   130
#> [298,]  63   2      1          0        0    99
#> [299,]  67   2      0        180        0   184
#> [300,]  65  10      1          1        1   148
#> [301,]  66  19      1         12        1   150
#> [302,]  65   4      1          1        0   130
#> [303,]  64   4      0        179        0   160
#> [304,]  66   4      0        180        1   130
#> [305,]  70  15      1         12        1   132
#> [306,]  64   0      1          0        1   118
#> [307,]  67   2      0         18        0   131
#> [308,]  66   7      1          5        1   131
#> [309,]  66   4      0        180        0   177
#> [310,]  68   4      1          0        1   160
#> [311,]  65  13      1         12        1   130
#> [312,]  69   8      0         93        0   140
#> [313,]  65   1      0          1        1   120
#> [314,]  68  18      1          0        1   160
#> [315,]  68   4      0          4        1   190
#> [316,]  71   3      0          5        0   112
#> [317,]  70   7      1          0        1   190
#> [318,]  68   7      0        150        0   210
#> [319,]  71  20      1          0        1   160
#> [320,]  67   2      0        180        0   128
#> [321,]  66   9      1          3        1   151
#> [322,]  66   1      1          1        1   165
#> [323,]  69   8      0        180        1   153
#> [324,]  70  14      0        171        0   166
#> [325,]  66   4      0        180        0   130
#> [326,]  67  10      1          9        0   200
#> [327,]  67   6      1          4        0   130
#> [328,]  68  18      1         14        1   170
#> [329,]  65   2      0        180        0   130
#> [330,]  68   7      1          0        1   150
#> [331,]  69   3      1          2        0   151
#> [332,]  67  14      1         13        0   130
#> [333,]  65  14      1         13        1   150
#> [334,]  69   8      0        180        1   180
#> [335,]  71   7      0          7        0   230
#> [336,]  66   2      0          2        1   228
#> [337,]  71   6      0         45        1   158
#> [338,]  71   3      0        103        0   133
#> [339,]  69   3      0          3        1   130
#> [340,]  70  22      1         13        0   103
#> [341,]  67   1      0         36        1   104
#> [342,]  68   6      0        180        0   145
#> [343,]  69   8      1          5        1   195
#> [344,]  69   6      1          4        1   174
#> [345,]  72   7      0          7        1   110
#> [346,]  67   3      0        180        0   110
#> [347,]  66   2      1          1        0   123
#> [348,]  69  19      0        180        0   130
#> [349,]  67   7      1          4        0   122
#> [350,]  69   4      1          3        0   132
#> [351,]  68   2      0          7        1   130
#> [352,]  67  13      1          9        0   130
#> [353,]  68   3      0         19        0   135
#> [354,]  67  12      1          8        0   120
#> [355,]  69   1      0          1        1   110
#> [356,]  67   1      0          1        1    60
#> [357,]  69   5      0         76        0   120
#> [358,]  67   8      1          0        1   130
#> [359,]  72  13      1         11        1   195
#> [360,]  68  10      1          8        1   160
#> [361,]  66  24      1         13        0   130
#> [362,]  70  35      1          0        1   105
#> [363,]  72  30      1          0        1   145
#> [364,]  70   7      0          7        0   102
#> [365,]  68   7      1          2        0   135
#> [366,]  73  20      1          0        1   170
#> [367,]  71   6      0          9        0   120
#> [368,]  70  11      0        180        1   210
#> [369,]  72  12      1         10        0   170
#> [370,]  67   8      0        180        1   170
#> [371,]  67   5      1          0        1   147
#> [372,]  67   9      0        180        0   158
#> [373,]  72   2      0          2        1   100
#> [374,]  71   1      0        173        1   188
#> [375,]  68  23      0        180        1   220
#> [376,]  68   4      1          3        0   210
#> [377,]  71   5      0        180        0   191
#> [378,]  73   6      0        180        1   117
#> [379,]  69  16      1         10        1   140
#> [380,]  69   8      1          1        0   164
#> [381,]  68   7      0        180        1   130
#> [382,]  72  16      1          1        1   130
#> [383,]  73   6      1          0        1   270
#> [384,]  72   8      1          1        1   150
#> [385,]  73   7      0          7        1   140
#> [386,]  70  13      1          9        0   100
#> [387,]  72   6      0        180        1   130
#> [388,]  73   0      0        180        1   161
#> [389,]  74   8      1          0        1    85
#> [390,]  69   2      1          0        1   110
#> [391,]  71   3      1          1        0   150
#> [392,]  74  20      0         20        1   180
#> [393,]  68   9      0        180        1   120
#> [394,]  71  20      1         10        0   140
#> [395,]  73   3      1          0        1   136
#> [396,]  71   3      1          2        1   190
#> [397,]  73  10      1          8        0   106
#> [398,]  73   4      0         58        1   160
#> [399,]  72   5      1          3        1   160
#> [400,]  70   3      0        180        1   154
#> [401,]  72  15      1          0        1   150
#> [402,]  72   8      1          0        1   140
#> [403,]  74   3      0          3        1   150
#> [404,]  69   2      1          1        1    80
#> [405,]  70   4      1          0        1   140
#> [406,]  71  14      1         13        1   170
#> [407,]  74   7      1          0        1   117
#> [408,]  69   7      0        180        1   144
#> [409,]  72  15      1         13        0   156
#> [410,]  70   8      0          8        0   120
#> [411,]  71  10      1          9        1   120
#> [412,]  75   1      0          1        0   133
#> [413,]  75   2      1          1        0   145
#> [414,]  73  10      1          9        1   146
#> [415,]  72  10      1          9        1   160
#> [416,]  73  10      1         10        1   120
#> [417,]  74  15      1          9        1   179
#> [418,]  71  11      1          8        0   110
#> [419,]  71   4      0          4        0   134
#> [420,]  73  10      1          8        0   120
#> [421,]  70   7      1          4        0   184
#> [422,]  72   7      0         57        1   145
#> [423,]  73  10      0        180        0   162
#> [424,]  72  11      0         11        1   140
#> [425,]  73   5      1          3        1   112
#> [426,]  76  25      1         12        1   170
#> [427,]  73  12      1         12        1   140
#> [428,]  75   1      0        180        1   140
#> [429,]  73   4      0        180        0   124
#> [430,]  74  34      1          8        1   233
#> [431,]  71  32      1         12        1   107
#> [432,]  72   5      0        180        0   154
#> [433,]  77  11      0         11        1   150
#> [434,]  73  15      0         15        1   160
#> [435,]  71  16      0        180        0   140
#> [436,]  73  10      1         10        0   124
#> [437,]  74   7      0        180        1   150
#> [438,]  74   3      0          3        1   128
#> [439,]  76   1      0        180        0   114
#> [440,]  76   8      1          0        1   141
#> [441,]  74  19      1          4        1   200
#> [442,]  73   6      0          6        1   114
#> [443,]  75  23      1         14        1   110
#> [444,]  74   2      0        180        0   190
#> [445,]  72   4      1          3        0   160
#> [446,]  73   4      1          3        1   125
#> [447,]  76  13      1         10        0   110
#> [448,]  75   4      1          0        1   122
#> [449,]  75   7      0          7        0   190
#> [450,]  75   0      0          0        1   130
#> [451,]  73  13      1         11        0   195
#> [452,]  75  12      0         12        1   160
#> [453,]  75   4      1          2        1   188
#> [454,]  74   6      0        180        0   160
#> [455,]  76   4      0          4        1   155
#> [456,]  74   2      0        180        0   111
#> [457,]  73   1      0         52        1   105
#> [458,]  73   0      0        180        0   156
#> [459,]  78  12      1         11        1   160
#> [460,]  76  44      1         10        0   105
#> [461,]  76   5      0        180        0   185
#> [462,]  76   5      1          0        1   167
#> [463,]  75   9      0        180        1   140
#> [464,]  73  33      1         12        1   175
#> [465,]  77   5      1          0        0   123
#> [466,]  77  12      0        180        0   130
#> [467,]  77   1      1          0        1    90
#> [468,]  78   5      1          0        1   170
#> [469,]  73   7      1          0        0   174
#> [470,]  75   3      1          1        1   171
#> [471,]  74   9      1          8        0   200
#> [472,]  75   6      0        180        0   150
#> [473,]  79  10      1          8        0   190
#> [474,]  74   2      1          0        1   130
#> [475,]  78  18      0         18        1   144
#> [476,]  76  29      0         47        0    90
#> [477,]  73   8      1          1        1   162
#> [478,]  73  11      1          2        1   110
#> [479,]  74   2      0        180        0   100
#> [480,]  78   7      0          7        1   133
#> [481,]  74   7      0          7        0   161
#> [482,]  80  10      1          6        1   147
#> [483,]  78   0      0        180        1   212
#> [484,]  75   5      0        119        1   150
#> [485,]  78  15      0        180        1   270
#> [486,]  80   8      0          8        1   120
#> [487,]  78  12      1          9        0   150
#> [488,]  78   2      1          1        0   130
#> [489,]  75   4      1          0        0   212
#> [490,]  75   3      0          3        0     0
#> [491,]  76   7      0         29        1   150
#> [492,]  77  24      0         24        1   160
#> [493,]  79   8      0         32        1   120
#> [494,]  80   9      0         23        1   128
#> [495,]  76   3      1          0        1   140
#> [496,]  78  11      1          1        1   140
#> [497,]  79  11      0        180        0   160
#> [498,]  79   2      1          0        1   121
#> [499,]  78  14      1          0        1   140
#> [500,]  78  11      1          8        1   118
#> [501,]  79   4      0          4        1   125
#> [502,]  76  12      1         10        1   127
#> [503,]  80   3      1          0        1   120
#> [504,]  78  11      0        180        1   135
#> [505,]  76   1      0          1        1   140
#> [506,]  77  31      1          3        1   161
#> [507,]  78   7      1          0        1   110
#> [508,]  79   3      0          3        0   120
#> [509,]  77   6      0          6        1   144
#> [510,]  79   4      1          0        1   120
#> [511,]  81   1      0        180        0   120
#> [512,]  77   9      1          4        0   141
#> [513,]  82   5      0          8        1   120
#> [514,]  80  40      1          0        1   138
#> [515,]  78   4      0         59        1   112
#> [516,]  80  17      1         12        0   100
#> [517,]  79  10      0         10        1   120
#> [518,]  80  15      1          0        1    90
#> [519,]  81   4      1          2        1   126
#> [520,]  79  28      0        164        0   100
#> [521,]  80   9      0        118        1   186
#> [522,]  80   6      0        173        1   160
#> [523,]  78  32      0        180        1   130
#> [524,]  79   1      0         37        1   140
#> [525,]  81   3      0        180        0   184
#> [526,]  81   2      0        175        0   172
#> [527,]  77  13      1          0        1   190
#> [528,]  80   5      1          1        1   108
#> [529,]  79   3      0          3        1   101
#> [530,]  76   1      0        166        0   131
#> [531,]  81   4      1          1        1   104
#> [532,]  78  20      1          0        1   109
#> [533,]  80   1      0          1        0   100
#> [534,]  78   3      1          1        1   152
#> [535,]  77  10      1          8        1   130
#> [536,]  82   3      1          1        1   144
#> [537,]  77   5      0         85        0   188
#> [538,]  80   2      1          1        0   168
#> [539,]  79   6      0          6        0   152
#> [540,]  78   2      0        180        0   148
#> [541,]  80   5      0          5        1   130
#> [542,]  77   4      0        180        1    98
#> [543,]  81   1      0        108        0   129
#> [544,]  78  12      0        180        0   134
#> [545,]  79   1      0        125        0   193
#> [546,]  82  21      1          2        0   155
#> [547,]  83   9      1          5        1   170
#> [548,]  82   5      0        180        0   110
#> [549,]  83   5      0        180        0   148
#> [550,]  79   7      1          6        0   130
#> [551,]  81  11      1          8        0   160
#> [552,]  81   5      0        177        0    41
#> [553,]  80  11      1          8        0   170
#> [554,]  79   1      0        180        1   170
#> [555,]  80   7      1          0        1   146
#> [556,]  84   5      1          1        1    85
#> [557,]  81  20      1          9        0   170
#> [558,]  83   8      0          8        0   115
#> [559,]  81  16      0         16        1   110
#> [560,]  80   6      1          0        1   150
#> [561,]  80  11      1          8        0   110
#> [562,]  81   8      0        180        0   146
#> [563,]  80   8      1          7        0   160
#> [564,]  79   7      0        177        0   197
#> [565,]  83   2      0          2        1   155
#> [566,]  80   3      1          1        1   230
#> [567,]  82  23      1          0        0   110
#> [568,]  84   5      0        180        1   203
#> [569,]  84   4      0          4        1    85
#> [570,]  81   1      0          1        1   150
#> [571,]  84   1      0         38        1   205
#> [572,]  83   3      0        180        0   174
#> [573,]  80  13      1          8        1   140
#> [574,]  84   4      0         89        1   129
#> [575,]  80   2      1          0        1   130
#> [576,]  79   4      0          4        1    60
#> [577,]  80   6      0         71        1   189
#> [578,]  83   1      0          1        1   100
#> [579,]  82  19      0         19        0   120
#> [580,]  80  30      1         13        0   220
#> [581,]  81  14      1         12        1   128
#> [582,]  83   2      0        154        0   130
#> [583,]  82   0      0          2        1   100
#> [584,]  81   4      0          4        0   175
#> [585,]  84  15      1         13        1   110
#> [586,]  81   1      0          1        1   145
#> [587,]  82   5      1          0        1   146
#> [588,]  83  12      1          2        1   170
#> [589,]  81  19      1         14        0   120
#> [590,]  83   7      0        126        0   135
#> [591,]  86   8      0          8        1   132
#> [592,]  81  16      1          9        0   180
#> [593,]  86   3      0          3        1   140
#> [594,]  82   9      0        180        1   134
#> [595,]  81  13      0        180        0   152
#> [596,]  85   3      0          3        1   118
#> [597,]  81   2      1          0        1   118
#> [598,]  81   4      0        180        0   160
#> [599,]  83   4      0          4        0   130
#> [600,]  87   2      0          5        1   137
#> [601,]  86  12      1          0        1   132
#> [602,]  86   6      1          0        1   140
#> [603,]  84  16      0         70        1   150
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
#> [615,]  86  13      0        177        0   163
#> [616,]  86   6      0          6        1   117
#> [617,]  84  13      0         62        1   100
#> [618,]  88   4      0          4        0   100
#> [619,]  83  20      1          3        1   150
#> [620,]  88   4      0          4        1   115
#> [621,]  87   2      0        180        1   130
#> [622,]  88   2      0        180        1    68
#> [623,]  87   8      0          8        1   157
#> [624,]  86  15      1          8        1   109
#> [625,]  89   4      0          4        1   153
#> [626,]  89   5      0        119        1   140
#> [627,]  87   6      0        180        1   110
#> [628,]  87   1      0          1        0   170
#> [629,]  84   8      0        180        1   119
#> [630,]  87  15      1          9        1   138
#> [631,]  84   0      0        180        1   136
#> [632,]  89  10      0         46        1   170
#> [633,]  90  14      0         14        1   100
#> [634,]  88   1      0          1        0   135
#> [635,]  86   4      0        180        1   145
#> [636,]  91   8      0          8        0   100
#> [637,]  87   2      0        180        0   160
#> [638,]  91  10      0        145        0   135
#> [639,]  86   3      1          0        1    80
#> [640,]  88   7      0         24        0   119
#> [641,]  90  11      1         10        1   186
#> [642,]  86   9      1          7        0   130
#> [643,]  90   4      1          0        0   121
#> [644,]  91   1      0          1        1    74
#> [645,]  87  43      0        178        1   130
#> [646,]  90   5      1          0        1   125
#> [647,]  89   3      1          1        1   160
#> [648,]  92   1      0          1        1   167
#> [649,]  87   7      0         74        1   105
#> [650,]  91   5      0        169        1   176
#> [651,]  89  52      0         52        1   130
#> [652,]  92   7      0          7        1   110
#> [653,]  89   4      0          4        1   159
#> [654,]  91   0      0          0        0     0
#> [655,]  90  18      0        180        0   188
#> [656,]  91   4      1          0        1   120
#> [657,]  94   6      0         50        0    78
#> [658,]  93   8      0        179        1   110
#> [659,]  94   8      0          8        1   142
#> [660,]  92   4      0         76        1   149
#> [661,]  91   1      0        180        0   158
#> [662,]  90  16      0         16        1   106
#> [663,]  96   3      0         12        1    97
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  93   0      1          0        1   122
#> [668,]  92   2      0          2        0   112
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   2.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+  12.0 
#>  [11]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+   5.0+   2.0+ 180.0+
#>  [21] 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+
#>  [31] 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 161.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+  10.0+
#>  [61] 172.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0    1.0  179.0+
#>  [71] 180.0+ 179.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+  36.0   88.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+
#>  [91]  77.0  180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [101]  85.0  180.0+ 180.0+ 166.0+ 180.0+ 180.0+ 152.0+   7.0+   6.0+ 180.0+
#> [111] 180.0+  13.0+ 171.0+ 174.0+  28.0    6.0+   1.0  180.0+ 180.0+ 180.0+
#> [121] 180.0+ 175.0+ 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+
#> [131] 180.0+ 180.0+  12.0+ 180.0+   8.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [141] 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+
#> [151] 180.0+ 147.0+ 180.0+   9.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+  64.0  180.0+ 180.0+   9.0+ 180.0+   0.5  180.0+ 161.0+ 180.0+
#> [171] 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+  17.0   45.0  180.0+   9.0+
#> [181] 180.0+  24.0  180.0+   8.0  180.0+ 180.0+   1.0+  15.0  180.0+ 180.0+
#> [191]  77.0   13.0+   8.0+ 180.0+  94.0  180.0+ 169.0    6.0  180.0+ 180.0+
#> [201] 180.0+   3.0+  30.0  180.0+ 180.0+  28.0   13.0+   5.0  180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+
#> [221]   9.0    7.0+  22.0  180.0+   7.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+
#> [231]   4.0+   3.0+ 180.0+ 180.0+  17.0   36.0  180.0+   3.0+ 180.0+ 180.0+
#> [241] 180.0+ 180.0+ 180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+
#> [251]   9.0    3.0  180.0+ 180.0+  11.0+   2.0+  18.0+ 180.0+ 180.0+   3.0+
#> [261] 103.0   15.0  180.0+  13.0  180.0+ 179.0+ 166.0+  14.0+   0.5+ 180.0+
#> [271] 180.0+ 180.0+   7.0+   8.0    5.0   16.0  180.0+   1.0  180.0+ 180.0+
#> [281] 180.0+ 123.0+   1.0+  11.0+  79.0   80.0   15.0+   4.0+ 180.0+ 180.0+
#> [291] 180.0+ 174.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [301]  19.0+ 180.0+ 179.0+ 180.0+ 180.0+   0.5   18.0    7.0+ 180.0+ 180.0+
#> [311] 180.0+  93.0    1.0   18.0+   4.0    5.0    7.0+ 150.0  180.0+ 180.0+
#> [321] 180.0+   1.0  180.0+ 171.0  180.0+ 174.0+   6.0  180.0+ 180.0+ 180.0+
#> [331] 180.0+ 180.0+  14.0+ 180.0+   7.0+   2.0   45.0  103.0    3.0+ 180.0+
#> [341]  36.0  180.0+ 180.0+  97.0    7.0  180.0+   2.0+ 180.0+   7.0  180.0+
#> [351]   7.0   13.0+  19.0  180.0+   1.0    1.0   76.0  180.0+ 132.0   10.0+
#> [361] 180.0+ 180.0+ 162.0    7.0+   7.0+ 124.0    9.0  180.0+  12.0  180.0+
#> [371] 180.0+ 180.0+   2.0  173.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+
#> [381] 180.0+  16.0+   6.0  180.0+   7.0+  13.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [391]   3.0+  20.0  180.0+  20.0  180.0+   3.0   87.0   58.0  180.0+ 180.0+
#> [401] 180.0+ 180.0+   3.0    2.0  180.0+  14.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [411] 179.0+   1.0  180.0+ 180.0+ 159.0   15.0  180.0+ 180.0+   4.0+  10.0 
#> [421] 104.0+  57.0  180.0+  11.0    5.0  180.0+  12.0  180.0+ 180.0+  34.0 
#> [431] 177.0+ 180.0+  11.0+  15.0+ 180.0+  10.0  180.0+   3.0  180.0+ 180.0+
#> [441] 180.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+ 174.0+   4.0    7.0    0.5 
#> [451] 180.0+  12.0   46.0  180.0+   4.0  180.0+  52.0  180.0+  12.0  180.0+
#> [461] 180.0+ 180.0+ 180.0+  33.0    5.0  180.0+   1.0  180.0+   7.0+   3.0 
#> [471] 168.0+ 180.0+ 180.0+ 176.0+  18.0   47.0  180.0+  11.0  180.0+   7.0 
#> [481]   7.0   10.0  180.0+ 119.0  180.0+   8.0  180.0+ 180.0+   4.0+   3.0 
#> [491]  29.0   24.0   32.0   23.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+  11.0 
#> [501]   4.0  180.0+   3.0+ 180.0+   1.0  171.0   43.0    3.0    6.0  138.0 
#> [511] 180.0+  71.0    8.0   40.0   59.0   17.0   10.0+ 180.0+  93.0  164.0 
#> [521] 118.0  173.0  180.0+  37.0  180.0+ 175.0+  22.0    5.0+   3.0  166.0+
#> [531]  71.0   20.0+   1.0    3.0+  10.0  180.0+  85.0   10.0    6.0+ 180.0+
#> [541]   5.0  180.0+ 108.0  180.0+ 125.0  180.0+   9.0+ 180.0+ 180.0+ 180.0+
#> [551] 180.0+ 177.0+ 169.0  180.0+   7.0+ 180.0+  20.0    8.0+  16.0  180.0+
#> [561] 180.0+ 180.0+ 180.0+ 177.0+   2.0    3.0+  62.0  180.0+   4.0    1.0 
#> [571]  38.0  180.0+ 180.0+  89.0  180.0+   4.0   71.0    1.0   19.0   30.0 
#> [581] 180.0+ 154.0    2.0    4.0+ 180.0+   1.0    5.0+  77.0  180.0+ 126.0 
#> [591]   8.0  180.0+   3.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+   4.0+   5.0 
#> [601] 180.0+   6.0   70.0  180.0+ 180.0+ 180.0+  14.0    3.0   13.0  180.0+
#> [611] 180.0+  92.0  180.0+  38.0  177.0    6.0+  62.0    4.0+  20.0    4.0 
#> [621] 180.0+ 180.0+   8.0+ 180.0+   4.0  119.0  180.0+   1.0+ 180.0+ 180.0+
#> [631] 180.0+  46.0   14.0    1.0+ 180.0+   8.0  180.0+ 145.0    3.0   24.0 
#> [641]  11.0  180.0+   4.0    1.0  178.0+  89.0    3.0+   1.0   74.0  169.0 
#> [651]  52.0    7.0    4.0    0.5  180.0+   4.0   50.0  179.0+   8.0+  76.0 
#> [661] 180.0+  16.0   12.0    8.0   26.0   53.0    0.5    2.0    3.0   15.0+
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
#>   0.8038038 
```
