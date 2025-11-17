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
#> min 0.00371    44   2.789 0.1575       6
#> 1se 0.07290    12   2.930 0.1467       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35  10      1          9        0   106
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  33   6      1          1        1   115
#>  [10,]  38  16      1         10        0   160
#>  [11,]  38  12      1         11        1    92
#>  [12,]  40  12      1          9        0   153
#>  [13,]  37   1      1          0        1   146
#>  [14,]  40   2      1          1        1   148
#>  [15,]  42   2      0        180        1   100
#>  [16,]  38   5      1          3        0   125
#>  [17,]  42   2      0          2        0   140
#>  [18,]  40   6      0        180        1   138
#>  [19,]  40  11      1         10        1   120
#>  [20,]  43   3      1          0        1   100
#>  [21,]  41   2      1          1        0   166
#>  [22,]  43   4      1          0        1   130
#>  [23,]  42  15      1         13        1   125
#>  [24,]  40   3      1          1        0   170
#>  [25,]  42  12      1         10        1   170
#>  [26,]  43   2      1          1        1   116
#>  [27,]  42   2      0        180        1   124
#>  [28,]  44   5      1          1        0   170
#>  [29,]  45   3      0        180        1   154
#>  [30,]  41  10      1          8        0   150
#>  [31,]  44   3      0        180        0   141
#>  [32,]  45   9      1          7        0   110
#>  [33,]  41   5      1          4        1   141
#>  [34,]  44   2      1          1        1   150
#>  [35,]  43   2      0        180        1   140
#>  [36,]  45   2      0        180        1   140
#>  [37,]  46   2      1          1        0   126
#>  [38,]  45   3      0        150        0   130
#>  [39,]  44   3      1          0        1   180
#>  [40,]  46   7      1          2        0   166
#>  [41,]  43  29      0        180        1   180
#>  [42,]  45   4      1          0        0   124
#>  [43,]  43  10      0        180        0   185
#>  [44,]  47   6      1          0        1   116
#>  [45,]  46  13      1         10        0   100
#>  [46,]  44   0      1          0        1    96
#>  [47,]  47   4      1          3        1   160
#>  [48,]  43   3      1          0        1   124
#>  [49,]  45   5      0          5        0   141
#>  [50,]  46   2      1          1        1   122
#>  [51,]  46   6      1          0        1   100
#>  [52,]  44   9      1          8        1   135
#>  [53,]  45   5      0        180        1   190
#>  [54,]  46   4      0        180        1   121
#>  [55,]  44   2      0        180        0   142
#>  [56,]  46  15      0        180        1   120
#>  [57,]  47   5      1          3        1   130
#>  [58,]  47   9      1          6        0   170
#>  [59,]  46   3      1          0        1   119
#>  [60,]  47  10      0         10        1   140
#>  [61,]  48   2      1          0        0   184
#>  [62,]  47   7      0        180        0   145
#>  [63,]  50   4      1          1        0   125
#>  [64,]  50   6      1          2        1   140
#>  [65,]  50   7      0        180        1   110
#>  [66,]  49   2      0          2        0   105
#>  [67,]  49  23      0        179        1   112
#>  [68,]  50   7      1          0        1    92
#>  [69,]  50   4      0          4        1   100
#>  [70,]  50   1      1          0        0   150
#>  [71,]  50   9      0        180        0   130
#>  [72,]  49   7      1          4        1    90
#>  [73,]  47   8      0        180        0   160
#>  [74,]  47   6      0        180        1   162
#>  [75,]  51   8      0        180        1   140
#>  [76,]  46   3      0        180        1   120
#>  [77,]  46   1      1          1        0   145
#>  [78,]  48   7      1          0        1   110
#>  [79,]  53   8      0         36        1   160
#>  [80,]  48  17      1         10        0   111
#>  [81,]  47   2      1          1        0   110
#>  [82,]  52   4      1          4        0   152
#>  [83,]  49   9      1          3        0   102
#>  [84,]  49  15      0        180        1   160
#>  [85,]  53   5      0        180        1   140
#>  [86,]  53   5      0         77        0   159
#>  [87,]  53   7      1          0        0   199
#>  [88,]  54   6      1          3        0   129
#>  [89,]  51   3      1          1        0   140
#>  [90,]  50   2      0          5        1   106
#>  [91,]  50  10      1          6        0   122
#>  [92,]  53   8      1          7        0   160
#>  [93,]  48   3      1          2        0   150
#>  [94,]  49   5      1          2        1   150
#>  [95,]  53   4      0          4        0   140
#>  [96,]  52  14      1          7        1   200
#>  [97,]  48   6      0        180        0   160
#>  [98,]  54   9      1          0        1   138
#>  [99,]  55   3      1          1        0   150
#> [100,]  54  23      1         10        0   131
#> [101,]  52   7      1          2        0   154
#> [102,]  54   9      1          1        0   130
#> [103,]  55   4      1          2        0   150
#> [104,]  52   4      0        180        1   180
#> [105,]  51  13      1         11        0   145
#> [106,]  50   5      1          4        1   150
#> [107,]  54   4      1          0        1   121
#> [108,]  55  28      1         13        1   160
#> [109,]  50   7      1          1        0   156
#> [110,]  53   8      1          0        1   130
#> [111,]  50   7      1          0        1   127
#> [112,]  52   5      0        175        1   117
#> [113,]  54   7      1          0        1   100
#> [114,]  56   3      0        180        1   193
#> [115,]  56   2      0        180        0   132
#> [116,]  52   8      0        180        0   119
#> [117,]  53  18      1          9        1   150
#> [118,]  54   3      0        180        1   180
#> [119,]  55   6      0        180        0   170
#> [120,]  53  10      1          9        0   172
#> [121,]  53  15      0         15        1    90
#> [122,]  55   6      1          5        1   138
#> [123,]  54  12      1          0        1   190
#> [124,]  55   2      0        134        1   140
#> [125,]  55   1      0          2        0   130
#> [126,]  57   3      0          3        0   120
#> [127,]  54   7      1          2        0   129
#> [128,]  54   2      1          1        0   135
#> [129,]  52   9      1          3        0   170
#> [130,]  54   2      1          1        1   176
#> [131,]  57   5      1          3        1   138
#> [132,]  57   1      0          1        1   100
#> [133,]  56   4      1          0        1   140
#> [134,]  55  11      1          7        0   104
#> [135,]  52  15      1         14        0   130
#> [136,]  56  14      1         11        0   130
#> [137,]  53   3      1          0        1   200
#> [138,]  57  10      0        180        1   170
#> [139,]  55   3      1          1        1   156
#> [140,]  57   0      0          0        1   150
#> [141,]  53  15      1         10        1   130
#> [142,]  54  17      1          8        1   227
#> [143,]  55  13      0        166        1   140
#> [144,]  57   4      1          2        1   185
#> [145,]  53   4      0        147        1   145
#> [146,]  53   7      1          0        1   120
#> [147,]  57  11      1         10        1   129
#> [148,]  55   3      1          2        0   140
#> [149,]  54   7      1          0        1   141
#> [150,]  56   4      0          4        0   164
#> [151,]  59  15      1         10        0   140
#> [152,]  58   9      1          0        1   180
#> [153,]  55   5      1          0        0   140
#> [154,]  59   3      0        180        0   120
#> [155,]  58   4      1          0        1   160
#> [156,]  57   2      0          2        1   120
#> [157,]  60   5      1          1        0   138
#> [158,]  57   5      0        180        1   130
#> [159,]  58  11      1          9        1   124
#> [160,]  55   5      1          0        1   160
#> [161,]  57  10      1          9        0   103
#> [162,]  59   6      1          0        1   140
#> [163,]  59   5      0        180        1   155
#> [164,]  59   4      1          0        1   152
#> [165,]  58   4      1          3        0   120
#> [166,]  60   0      1          0        1    80
#> [167,]  59   2      1          1        0   140
#> [168,]  58   8      0        161        1   140
#> [169,]  58  14      1          6        0   190
#> [170,]  61   9      1          8        0   150
#> [171,]  61   3      1          2        1   102
#> [172,]  58   1      0          1        1   100
#> [173,]  57  13      1         10        0   110
#> [174,]  57   2      1          0        1   116
#> [175,]  58  10      0         10        1   150
#> [176,]  57  11      0        180        1   150
#> [177,]  61   3      0         17        0   143
#> [178,]  56  14      0         45        0   130
#> [179,]  58  19      1         13        1   140
#> [180,]  56  13      1          6        1   158
#> [181,]  56  18      1         11        1   165
#> [182,]  59   9      1          0        1    80
#> [183,]  55   4      1          3        1   160
#> [184,]  60  12      1          0        1   114
#> [185,]  55   9      1          7        1   135
#> [186,]  61   4      1          0        1   115
#> [187,]  56   8      1          8        0   120
#> [188,]  61  13      1         12        1   130
#> [189,]  57  15      1         13        1   110
#> [190,]  59   5      1          2        0   182
#> [191,]  58   5      1          1        1   135
#> [192,]  59  10      0        180        0   160
#> [193,]  61   8      0         77        0   120
#> [194,]  61  13      0         13        0   210
#> [195,]  58   8      1          5        0   152
#> [196,]  62   7      1          2        1   180
#> [197,]  61  18      0        170        0   140
#> [198,]  61  28      1          7        0   133
#> [199,]  58   8      1          3        1   150
#> [200,]  57   7      0        169        0   180
#> [201,]  61   7      0          7        1   150
#> [202,]  60   7      0          7        0   147
#> [203,]  61   6      0          6        0   134
#> [204,]  59  13      1          2        0   198
#> [205,]  57  12      1          9        1   120
#> [206,]  58   3      1          0        1   146
#> [207,]  58   2      0         30        0   202
#> [208,]  59  16      1          9        1   133
#> [209,]  61  13      0         13        0   120
#> [210,]  61   5      0          5        1   110
#> [211,]  58  11      1          9        0   179
#> [212,]  57   2      1          1        0   159
#> [213,]  62  17      1         10        1   180
#> [214,]  58   7      0        180        1   150
#> [215,]  63   3      1          1        0   180
#> [216,]  63   1      0        180        1   130
#> [217,]  63   4      1          3        0   222
#> [218,]  62   3      0        180        1   105
#> [219,]  63   4      0        180        1   190
#> [220,]  64   4      0        180        0   130
#> [221,]  63   4      1          1        0   155
#> [222,]  59   8      0        180        1   140
#> [223,]  61   9      1          9        1   150
#> [224,]  58   9      1          9        0   110
#> [225,]  62   7      0          7        0   150
#> [226,]  59   1      0         22        1   162
#> [227,]  58   2      0        180        0   127
#> [228,]  59   5      1          1        0   148
#> [229,]  65  13      0        180        1   100
#> [230,]  63   1      0          1        0   162
#> [231,]  62   6      0        180        0   170
#> [232,]  61  15      1         13        0   170
#> [233,]  62   6      0          6        0   120
#> [234,]  63  12      1         10        0   200
#> [235,]  59  10      0        180        1   130
#> [236,]  61   6      1          1        1   117
#> [237,]  64  12      1         11        0   160
#> [238,]  63  10      1          0        1   148
#> [239,]  63  14      1          9        0   123
#> [240,]  61  10      1          2        1   194
#> [241,]  64  32      1          9        1   160
#> [242,]  65   8      1          0        0   168
#> [243,]  65  10      1          8        1   120
#> [244,]  64   0      0          0        1    90
#> [245,]  60   6      0        180        0   130
#> [246,]  61  12      1         11        0   154
#> [247,]  61   4      0        180        1   113
#> [248,]  65   3      0        180        1   190
#> [249,]  63  16      1          7        1   110
#> [250,]  64   7      0        180        1   120
#> [251,]  66   6      1          1        1   130
#> [252,]  63  12      0         12        1   150
#> [253,]  65   6      0          9        0   112
#> [254,]  62  13      1         11        0   180
#> [255,]  67  11      0         11        1   100
#> [256,]  64   2      0          2        0   201
#> [257,]  66  18      1          5        0   142
#> [258,]  63   9      1          8        1   160
#> [259,]  63   3      1          2        0   120
#> [260,]  63   2      1          0        0   140
#> [261,]  64  19      1          8        1   160
#> [262,]  65   8      1          0        1   140
#> [263,]  67   6      0        180        1   170
#> [264,]  65  15      1         11        1   160
#> [265,]  68   5      1          4        1   150
#> [266,]  64  13      1         12        1   150
#> [267,]  64   6      1          0        1   125
#> [268,]  66  13      1          0        0   118
#> [269,]  65   3      0          3        0   105
#> [270,]  64   0      0          0        1   148
#> [271,]  67   4      1          3        0   130
#> [272,]  65   2      1          1        1   170
#> [273,]  68   1      0        180        1   166
#> [274,]  64  10      1          9        1   110
#> [275,]  63   7      1          0        0   162
#> [276,]  67   8      1          1        1   130
#> [277,]  68   5      0          5        1    90
#> [278,]  64   1      0          1        1   120
#> [279,]  63   8      1          1        1   162
#> [280,]  63  10      0         18        1   130
#> [281,]  67  11      0         11        0   150
#> [282,]  66  12      1         10        1   150
#> [283,]  66  11      1          0        0   100
#> [284,]  65   4      1          2        1   145
#> [285,]  69  12      0         15        1   140
#> [286,]  66  15      1         13        1   160
#> [287,]  63   2      0        180        0   150
#> [288,]  65  11      1          6        0   130
#> [289,]  66   9      1          8        0   130
#> [290,]  63   8      0        180        1   120
#> [291,]  68  14      1         13        1   140
#> [292,]  65   8      1          0        1    90
#> [293,]  66   3      0          3        1   138
#> [294,]  69   1      1          0        0   170
#> [295,]  67   1      0        180        1   160
#> [296,]  68  10      1         10        1   150
#> [297,]  63   2      1          0        0    99
#> [298,]  67   2      0        180        0   184
#> [299,]  65   6      0          6        0    80
#> [300,]  69   6      0         99        1   140
#> [301,]  65   4      1          1        0   130
#> [302,]  66   4      0        180        1   130
#> [303,]  70  15      1         12        1   132
#> [304,]  64  11      0         11        0   125
#> [305,]  64   4      0        180        1   140
#> [306,]  64   0      1          0        1   118
#> [307,]  66   7      1          5        1   131
#> [308,]  66   4      0        180        0   177
#> [309,]  68   4      1          0        1   160
#> [310,]  69   4      1          3        1   150
#> [311,]  65  13      1         12        1   130
#> [312,]  69  17      1         10        0   140
#> [313,]  64  21      0         21        1   155
#> [314,]  66   6      0        180        0   140
#> [315,]  68  18      1          0        1   160
#> [316,]  65   6      0        101        1   115
#> [317,]  70   7      1          0        1   190
#> [318,]  71  20      1          0        1   160
#> [319,]  66   9      1          3        1   151
#> [320,]  66   1      1          1        1   165
#> [321,]  69   8      0        180        1   153
#> [322,]  70  14      0        171        0   166
#> [323,]  67   6      1          4        0   130
#> [324,]  68  18      1         14        1   170
#> [325,]  69   0      0          0        1   148
#> [326,]  65   2      0        180        0   130
#> [327,]  67  14      1         13        0   130
#> [328,]  69   8      0        180        1   180
#> [329,]  71   7      0          7        0   230
#> [330,]  66   2      0          2        1   228
#> [331,]  71   6      0         45        1   158
#> [332,]  69   5      0          5        1   142
#> [333,]  71   3      0        103        0   133
#> [334,]  69   8      1          5        1   195
#> [335,]  69   6      1          4        1   174
#> [336,]  72   3      1          0        1   132
#> [337,]  67   3      0        180        0   110
#> [338,]  66   2      1          1        0   123
#> [339,]  69  19      0        180        0   130
#> [340,]  67   7      1          4        0   122
#> [341,]  69   4      1          3        0   132
#> [342,]  68   2      0          7        1   130
#> [343,]  67  13      1          9        0   130
#> [344,]  70   9      0        180        1   142
#> [345,]  72   5      1          4        0   170
#> [346,]  67  22      1          1        1   140
#> [347,]  68   3      0         19        0   135
#> [348,]  69   5      0         76        0   120
#> [349,]  67   8      1          0        1   130
#> [350,]  72  13      1         11        1   195
#> [351,]  68  10      1          8        1   160
#> [352,]  66  24      1         13        0   130
#> [353,]  72  30      1          0        1   145
#> [354,]  70   7      0          7        0   102
#> [355,]  68   7      1          2        0   135
#> [356,]  73  20      1          0        1   170
#> [357,]  71   6      0          9        0   120
#> [358,]  70  11      0        180        1   210
#> [359,]  72  19      1          8        0   120
#> [360,]  72  12      1         10        0   170
#> [361,]  67   8      0        180        1   170
#> [362,]  67   5      1          0        1   147
#> [363,]  67   9      0        180        0   158
#> [364,]  70   5      0        180        0   150
#> [365,]  72   2      0          2        1   100
#> [366,]  67   4      1          1        0   134
#> [367,]  72   6      1          5        0   115
#> [368,]  71   1      0        173        1   188
#> [369,]  69   3      0        180        0   220
#> [370,]  71   3      1          2        0   150
#> [371,]  68   4      1          3        0   210
#> [372,]  72   5      0         28        0   120
#> [373,]  71   5      0        180        0   191
#> [374,]  73   6      0        180        1   117
#> [375,]  69  16      1         10        1   140
#> [376,]  69   8      1          1        0   164
#> [377,]  68   7      0        180        1   130
#> [378,]  72  16      1          1        1   130
#> [379,]  70   4      0        180        0   180
#> [380,]  69   1      1          0        0   155
#> [381,]  73   6      1          0        1   270
#> [382,]  72   8      1          1        1   150
#> [383,]  71   2      1          0        1   180
#> [384,]  73   7      0          7        1   140
#> [385,]  68  15      1         13        1   130
#> [386,]  70   3      0          3        1   159
#> [387,]  70  13      1          9        0   100
#> [388,]  72   6      0        180        1   130
#> [389,]  73   0      0        180        1   161
#> [390,]  74   8      1          0        1    85
#> [391,]  73   4      0        180        1   154
#> [392,]  69   2      1          0        1   110
#> [393,]  71   3      1          1        0   150
#> [394,]  71  15      1         11        0   165
#> [395,]  68   9      0        180        1   120
#> [396,]  73   3      1          0        1   136
#> [397,]  71  17      1         11        0   160
#> [398,]  71   8      1          7        0   149
#> [399,]  71   3      1          2        1   190
#> [400,]  73  10      1          8        0   106
#> [401,]  69  12      1          1        1   149
#> [402,]  70  26      1         11        1   120
#> [403,]  74   4      0          4        0   120
#> [404,]  72   5      1          3        1   160
#> [405,]  70   3      0        180        1   154
#> [406,]  73   6      0        180        0   110
#> [407,]  72  15      1          0        1   150
#> [408,]  71   7      1          2        0   143
#> [409,]  74   3      0          3        1   150
#> [410,]  73  17      1         11        0   140
#> [411,]  69   2      1          1        1    80
#> [412,]  71  14      1         13        1   170
#> [413,]  74   7      1          0        1   117
#> [414,]  72  10      1          8        1   153
#> [415,]  69   7      0        180        1   144
#> [416,]  72  15      1         13        0   156
#> [417,]  71  10      1          9        1   120
#> [418,]  75   1      0          1        0   133
#> [419,]  75   2      1          1        0   145
#> [420,]  73  10      1          9        1   146
#> [421,]  72  10      1          9        1   160
#> [422,]  73  10      1         10        1   120
#> [423,]  74  15      1          9        1   179
#> [424,]  71   2      0         10        1   112
#> [425,]  73   1      0          1        1    80
#> [426,]  75  13      1          1        1   130
#> [427,]  71   4      0          4        0   134
#> [428,]  72  15      1         12        1   120
#> [429,]  73  10      1          8        0   120
#> [430,]  72   1      1          1        0   168
#> [431,]  72   7      0         57        1   145
#> [432,]  73  10      0        180        0   162
#> [433,]  70   3      0          3        0   150
#> [434,]  73  12      1         12        1   140
#> [435,]  75   1      0        180        1   140
#> [436,]  72   4      1          0        1   197
#> [437,]  71   3      1          0        0   144
#> [438,]  73   5      0        180        0   126
#> [439,]  73   4      0        180        0   124
#> [440,]  74  34      1          8        1   233
#> [441,]  76   3      1          0        1   120
#> [442,]  71  32      1         12        1   107
#> [443,]  72   5      0        180        0   154
#> [444,]  72   3      0        180        0   160
#> [445,]  76   5      0          5        1   130
#> [446,]  77  11      0         11        1   150
#> [447,]  75   3      1          1        0   180
#> [448,]  72   7      1          2        0   142
#> [449,]  71  16      0        180        0   140
#> [450,]  76   1      0        180        0   114
#> [451,]  74   2      1          1        0   140
#> [452,]  73   6      0          6        1   114
#> [453,]  72   4      1          3        0   160
#> [454,]  76  17      1          0        1   200
#> [455,]  73   4      1          3        1   125
#> [456,]  75   4      1          0        1   122
#> [457,]  75   0      0          0        1   130
#> [458,]  73  13      1         11        0   195
#> [459,]  74   8      1          0        1   105
#> [460,]  76  13      1          8        1   148
#> [461,]  75   4      1          2        1   188
#> [462,]  74   6      0        180        0   160
#> [463,]  76   4      0          4        1   155
#> [464,]  75   1      0          1        1   125
#> [465,]  74   2      0        180        0   111
#> [466,]  73   0      0        180        0   156
#> [467,]  72   5      0        180        0   120
#> [468,]  76  44      1         10        0   105
#> [469,]  76   5      0        180        0   185
#> [470,]  74  10      1          0        1   135
#> [471,]  76   5      1          0        1   167
#> [472,]  77   5      1          0        0   123
#> [473,]  77  12      1          9        1   100
#> [474,]  73  10      1          9        0   146
#> [475,]  77  12      0        180        0   130
#> [476,]  76  12      1         11        1   120
#> [477,]  73   7      1          0        0   174
#> [478,]  75   3      1          1        1   171
#> [479,]  74   9      1          8        0   200
#> [480,]  75   6      0        180        0   150
#> [481,]  79  10      1          8        0   190
#> [482,]  74   2      1          0        1   130
#> [483,]  78  18      0         18        1   144
#> [484,]  73   8      1          1        1   162
#> [485,]  73  11      1          2        1   110
#> [486,]  74   2      0        180        0   100
#> [487,]  78   7      0          7        1   133
#> [488,]  74  15      0        180        1   172
#> [489,]  78   8      1          6        1   110
#> [490,]  74   7      0          7        0   161
#> [491,]  79   6      0        180        0   170
#> [492,]  78   0      0        180        1   212
#> [493,]  78  13      1          5        0   130
#> [494,]  75   5      0        119        1   150
#> [495,]  78  15      0        180        1   270
#> [496,]  75  13      1          6        0   150
#> [497,]  76   1      0          1        1    83
#> [498,]  79   4      0         80        0   145
#> [499,]  77   2      1          0        1   143
#> [500,]  78  10      0        180        1   130
#> [501,]  75  11      1          4        0   162
#> [502,]  76   7      0         29        1   150
#> [503,]  77  24      0         24        1   160
#> [504,]  79   8      0         32        1   120
#> [505,]  80   9      0         23        1   128
#> [506,]  80   6      0          6        1   150
#> [507,]  79  11      0        180        0   160
#> [508,]  79   2      1          0        1   121
#> [509,]  81   1      0          1        0   130
#> [510,]  76   4      0          4        1   160
#> [511,]  79   4      0          4        1   125
#> [512,]  76  10      1          8        0   180
#> [513,]  77   6      0          6        1   107
#> [514,]  78  11      0        180        1   135
#> [515,]  77  31      1          3        1   161
#> [516,]  79   3      0          3        0   120
#> [517,]  77   7      0        180        1   170
#> [518,]  77   6      0          6        1   144
#> [519,]  79   4      1          0        1   120
#> [520,]  81   1      0        180        0   120
#> [521,]  80  15      1         12        1   150
#> [522,]  77   9      1          4        0   141
#> [523,]  78   4      0         59        1   112
#> [524,]  80  17      1         12        0   100
#> [525,]  80   9      0        118        1   186
#> [526,]  80   6      0        173        1   160
#> [527,]  78  32      0        180        1   130
#> [528,]  79   1      0         37        1   140
#> [529,]  81   3      0        180        0   184
#> [530,]  78   7      0          7        1   147
#> [531,]  78  15      0         15        0   165
#> [532,]  80   5      1          1        1   108
#> [533,]  78  26      1          5        0   194
#> [534,]  81   4      1          1        1   104
#> [535,]  78  20      1          0        1   109
#> [536,]  80   1      0          1        0   100
#> [537,]  78   3      1          1        1   152
#> [538,]  77   5      0         85        0   188
#> [539,]  80   2      1          1        0   168
#> [540,]  78   2      0        180        0   148
#> [541,]  80   5      0          5        1   130
#> [542,]  82   1      1          0        1    82
#> [543,]  79  10      0        180        1   150
#> [544,]  77   4      0        180        1    98
#> [545,]  81   1      0        108        0   129
#> [546,]  78  12      0        180        0   134
#> [547,]  79   4      0          4        1   121
#> [548,]  80   6      0          6        1   110
#> [549,]  82   5      0        180        0   110
#> [550,]  79   7      1          6        0   130
#> [551,]  83   4      0        103        0    97
#> [552,]  81  11      1          8        0   160
#> [553,]  81   5      0        177        0    41
#> [554,]  80  11      1          8        0   170
#> [555,]  78  23      1         10        1   145
#> [556,]  79   4      0          4        1   183
#> [557,]  81  15      0        180        1   140
#> [558,]  81  20      1          9        0   170
#> [559,]  80  11      1          8        0   110
#> [560,]  81   8      0        180        0   146
#> [561,]  79   7      0        177        0   197
#> [562,]  79   0      1          0        1    96
#> [563,]  85   4      0        180        0    90
#> [564,]  81   2      1          1        0   198
#> [565,]  83   2      0          2        1   155
#> [566,]  82   6      0        128        1   100
#> [567,]  84   4      0        167        0   198
#> [568,]  80   3      1          1        1   230
#> [569,]  82  23      1          0        0   110
#> [570,]  84   5      0        180        1   203
#> [571,]  84   4      0          4        1    85
#> [572,]  81   1      0          1        1   150
#> [573,]  83   3      0        180        0   174
#> [574,]  81   4      0         90        1   138
#> [575,]  79   9      1          8        0   150
#> [576,]  80  13      1          8        1   140
#> [577,]  84   4      0         89        1   129
#> [578,]  80   2      1          0        1   130
#> [579,]  80   6      0         71        1   189
#> [580,]  83   1      0          1        1   100
#> [581,]  82  19      0         19        0   120
#> [582,]  80  30      1         13        0   220
#> [583,]  83   9      0        180        0   198
#> [584,]  83   2      0        154        0   130
#> [585,]  82   0      0          2        1   100
#> [586,]  85   9      1          6        1   160
#> [587,]  83   1      0        180        0   160
#> [588,]  84  15      1         13        1   110
#> [589,]  81   1      0          1        1   145
#> [590,]  82  16      1          8        0   103
#> [591,]  82   5      1          0        1   146
#> [592,]  81   4      0          4        0   160
#> [593,]  86  12      0        180        1   120
#> [594,]  81  19      1         14        0   120
#> [595,]  82   3      1          2        0   130
#> [596,]  82  15      1          0        0   183
#> [597,]  80   2      0         88        0   135
#> [598,]  86   8      0          8        1   132
#> [599,]  84   6      0        165        0   145
#> [600,]  86   3      0          3        1   140
#> [601,]  82   9      0        180        1   134
#> [602,]  84   3      0        180        1   120
#> [603,]  85   3      0          3        1   118
#> [604,]  81   4      0        180        0   160
#> [605,]  82   1      0        180        1   193
#> [606,]  87   2      0          5        1   137
#> [607,]  86  12      1          0        1   132
#> [608,]  82  14      1         11        1   103
#> [609,]  86   6      1          0        1   140
#> [610,]  84  16      0         70        1   150
#> [611,]  83  19      0         43        0   150
#> [612,]  84   3      1          2        0   125
#> [613,]  88  14      1          3        1   130
#> [614,]  84   3      0          3        1   121
#> [615,]  84   7      1          2        0   148
#> [616,]  84   9      0         92        1   110
#> [617,]  82   4      0          4        0   130
#> [618,]  86  13      0        177        0   163
#> [619,]  86   6      0          6        1   117
#> [620,]  84  13      0         62        1   100
#> [621,]  88   4      0          4        0   100
#> [622,]  83  20      1          3        1   150
#> [623,]  83   9      0         65        1   150
#> [624,]  86   9      1          7        1   142
#> [625,]  86   6      0         46        0   173
#> [626,]  88   3      0        115        0   110
#> [627,]  88   2      0        180        1    68
#> [628,]  89   4      0          4        1   153
#> [629,]  89   5      0        119        1   140
#> [630,]  87   6      0        180        1   110
#> [631,]  87   1      0          1        0   170
#> [632,]  84   8      0        180        1   119
#> [633,]  85   8      0          8        1   136
#> [634,]  84   2      0        110        1   174
#> [635,]  87  29      0         29        1    97
#> [636,]  87  15      1          9        1   138
#> [637,]  84   0      0        180        1   136
#> [638,]  89  10      0         46        1   170
#> [639,]  90  14      0         14        1   100
#> [640,]  88   1      0          1        0   135
#> [641,]  86   4      0        180        1   145
#> [642,]  87   2      0        180        0   160
#> [643,]  87   6      1          0        0   125
#> [644,]  88   7      0         24        0   119
#> [645,]  86  10      0        180        1   137
#> [646,]  86   9      1          7        0   130
#> [647,]  88   3      1          2        0   159
#> [648,]  91   3      0         33        1   137
#> [649,]  89  12      1          0        1   130
#> [650,]  89   2      0        168        0   118
#> [651,]  89  52      0         52        1   130
#> [652,]  92   7      0          7        1   110
#> [653,]  89   4      0          4        1   159
#> [654,]  91   0      0          0        0     0
#> [655,]  90  18      0        180        0   188
#> [656,]  91   4      1          0        1   120
#> [657,]  90  19      1         11        1   129
#> [658,]  94   6      0         50        0    78
#> [659,]  90   1      0          1        1   118
#> [660,]  91   2      0          2        1   116
#> [661,]  94   8      0          8        1   142
#> [662,]  92   4      0         76        1   149
#> [663,]  90   3      0         67        0   162
#> [664,]  96   3      0         12        1    97
#> [665,]  95   8      1          5        1   150
#> [666,]  91  12      0         53        1   212
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+ 180.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+   3.0 
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 161.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  179.0+ 180.0+   4.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+
#>  [81] 180.0+   4.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+   5.0 
#>  [91] 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+ 180.0+ 180.0+ 152.0+
#> [101]   7.0+ 180.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+  28.0  180.0+ 180.0+
#> [111] 180.0+ 175.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121]  15.0+ 180.0+  12.0+ 134.0+   2.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [131] 140.0    1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5 
#> [141] 180.0+ 171.0+ 166.0+   4.0+ 147.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [151] 180.0+   9.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+  64.0  180.0+ 180.0+ 180.0+   0.5  180.0+ 161.0+ 171.0+ 180.0+
#> [171]   3.0    1.0  180.0+ 180.0+  10.0+ 180.0+  17.0   45.0   19.0  180.0+
#> [181] 180.0+   9.0+ 180.0+ 172.0+  24.0  180.0+   8.0  180.0+  15.0  180.0+
#> [191] 180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+ 170.0   94.0  180.0+ 169.0 
#> [201]   7.0    7.0+   6.0  180.0+ 180.0+   3.0+  30.0  180.0+  13.0+   5.0 
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221]   4.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+ 180.0+ 180.0+   1.0 
#> [231] 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+  14.0+  88.0 
#> [241] 180.0+ 180.0+ 180.0+   0.5  180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [251] 180.0+  12.0    9.0  180.0+  11.0+   2.0+  18.0+ 180.0+   3.0+   2.0+
#> [261] 103.0   15.0  180.0+ 180.0+   5.0+  13.0  180.0+ 166.0+   3.0    0.5+
#> [271] 180.0+ 175.0+ 180.0+ 180.0+   7.0+   8.0    5.0    1.0  180.0+  18.0 
#> [281]  11.0+  80.0  180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [291] 180.0+   8.0+   3.0  175.0  180.0+  10.0  180.0+ 180.0+   6.0   99.0 
#> [301] 180.0+ 180.0+ 180.0+  11.0+ 180.0+   0.5    7.0+ 180.0+ 180.0+ 152.0+
#> [311] 180.0+ 180.0+  21.0+ 180.0+  18.0+ 101.0    7.0+ 180.0+ 180.0+   1.0 
#> [321] 180.0+ 171.0    6.0  180.0+   0.5  180.0+ 180.0+ 180.0+   7.0+   2.0 
#> [331]  45.0    5.0+ 103.0  180.0+  97.0  180.0+ 180.0+   2.0+ 180.0+   7.0 
#> [341] 180.0+   7.0   13.0+ 180.0+ 180.0+  51.0   19.0   76.0  180.0+ 132.0 
#> [351]  10.0+ 180.0+ 162.0    7.0+   7.0+ 124.0    9.0  180.0+ 180.0+  12.0 
#> [361] 180.0+ 180.0+ 180.0+ 180.0+   2.0   76.0  180.0+ 173.0+ 180.0+ 180.0+
#> [371] 180.0+  28.0  180.0+ 180.0+  16.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+
#> [381]   6.0  180.0+ 180.0+   7.0+  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+
#> [391] 180.0+   2.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0    3.0   87.0 
#> [401]  12.0  180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+
#> [411]   2.0   14.0+ 180.0+  10.0+ 180.0+ 180.0+ 179.0+   1.0  180.0+ 180.0+
#> [421] 159.0   15.0  180.0+  10.0    1.0   13.0    4.0+ 180.0+  10.0    1.0 
#> [431]  57.0  180.0+   3.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0 
#> [441] 180.0+ 177.0+ 180.0+ 180.0+   5.0   11.0+ 180.0+   7.0  180.0+ 180.0+
#> [451] 180.0+   6.0  180.0+  17.0+ 180.0+   4.0    0.5  180.0+ 180.0+ 180.0+
#> [461]  46.0  180.0+   4.0    1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [471] 180.0+   5.0  180.0+ 180.0+ 180.0+  12.0    7.0+   3.0  168.0+ 180.0+
#> [481] 180.0+ 176.0+  18.0  180.0+  11.0  180.0+   7.0  180.0+   8.0+   7.0 
#> [491] 180.0+ 180.0+ 172.0  119.0  180.0+ 180.0+   1.0   80.0    2.0  180.0+
#> [501] 152.0+  29.0   24.0   32.0   23.0    6.0  180.0+ 180.0+   1.0    4.0 
#> [511]   4.0   10.0+   6.0  180.0+ 171.0    3.0  180.0+   6.0  138.0  180.0+
#> [521] 180.0+  71.0   59.0   17.0  118.0  173.0  180.0+  37.0  180.0+   7.0+
#> [531]  15.0+   5.0+ 171.0+  71.0   20.0+   1.0    3.0+  85.0   10.0  180.0+
#> [541]   5.0    1.0  180.0+ 180.0+ 108.0  180.0+   4.0    6.0  180.0+ 180.0+
#> [551] 103.0  180.0+ 177.0+ 169.0   70.0    4.0  180.0+  20.0  180.0+ 180.0+
#> [561] 177.0+   0.5  180.0+ 180.0+   2.0  128.0  167.0    3.0+  62.0  180.0+
#> [571]   4.0    1.0  180.0+  90.0  180.0+ 180.0+  89.0  180.0+  71.0    1.0 
#> [581]  19.0   30.0  180.0+ 154.0    2.0  180.0+ 180.0+ 180.0+   1.0   16.0+
#> [591]   5.0+   4.0+ 180.0+ 180.0+   3.0   83.0   88.0    8.0  165.0    3.0 
#> [601] 180.0+ 180.0+   3.0+ 180.0+ 180.0+   5.0  180.0+ 174.0    6.0   70.0 
#> [611]  43.0  180.0+  14.0    3.0  180.0+  92.0    4.0  177.0    6.0+  62.0 
#> [621]   4.0+  20.0   65.0   11.0   46.0  115.0  180.0+   4.0  119.0  180.0+
#> [631]   1.0+ 180.0+   8.0  110.0   29.0  180.0+ 180.0+  46.0   14.0    1.0+
#> [641] 180.0+ 180.0+  25.0   24.0  180.0+ 180.0+  75.0   33.0  180.0+ 168.0 
#> [651]  52.0    7.0    4.0    0.5  180.0+   4.0  180.0+  50.0    1.0+   2.0 
#> [661]   8.0+  76.0   67.0   12.0    8.0   53.0    0.5   69.0    2.0    3.0 
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
#>    0.816301 
```
