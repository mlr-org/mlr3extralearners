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
  <https://mlr3book.mlr-org.com/chapters/chapter2/data_and_basic_modeling.html#sec-learners>

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
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

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
#> min 0.00337    44   2.873 0.1089       6
#> 1se 0.06034    13   2.977 0.1120       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35  10      1          9        0   106
#>   [5,]  38  13      1          0        1   161
#>   [6,]  38   2      0        115        0   150
#>   [7,]  36   1      0        180        1   155
#>   [8,]  35   0      0        180        1   119
#>   [9,]  38  12      1          8        1   120
#>  [10,]  36   5      1          0        1   115
#>  [11,]  33   6      1          1        1   115
#>  [12,]  38  16      1         10        0   160
#>  [13,]  40  12      1          9        0   153
#>  [14,]  42   3      1          1        1   130
#>  [15,]  37   1      1          0        1   146
#>  [16,]  38   5      1          3        0   125
#>  [17,]  42   2      0          2        0   140
#>  [18,]  40  11      1         10        1   120
#>  [19,]  42   2      0        180        0   100
#>  [20,]  41   2      1          1        0   166
#>  [21,]  40   1      1          0        1   145
#>  [22,]  42   4      0        180        0   162
#>  [23,]  42  12      1         10        1   170
#>  [24,]  43   2      1          1        1   116
#>  [25,]  44   5      1          1        0   170
#>  [26,]  45   3      0        180        1   154
#>  [27,]  41  10      1          8        0   150
#>  [28,]  44   3      0        180        0   141
#>  [29,]  41  13      1          1        0   140
#>  [30,]  45   9      1          7        0   110
#>  [31,]  45   6      0        180        1   170
#>  [32,]  41   5      1          4        1   141
#>  [33,]  43   2      0        180        1   140
#>  [34,]  45   2      0        180        1   140
#>  [35,]  46  15      0        180        0   120
#>  [36,]  46   2      1          1        0   126
#>  [37,]  47   4      1          3        0   118
#>  [38,]  48  15      0        180        1   160
#>  [39,]  45   3      0        150        0   130
#>  [40,]  44   3      1          0        1   180
#>  [41,]  43  29      0        180        1   180
#>  [42,]  45   4      1          0        0   124
#>  [43,]  46  13      1         10        0   100
#>  [44,]  44   0      1          0        1    96
#>  [45,]  45   5      0          5        0   141
#>  [46,]  46   6      1          0        1   100
#>  [47,]  44   4      1          0        1   114
#>  [48,]  47   2      0        180        0   108
#>  [49,]  44   9      1          8        1   135
#>  [50,]  46   5      1          3        0   130
#>  [51,]  46   4      0        180        1   121
#>  [52,]  46  15      0        180        1   120
#>  [53,]  47   3      1          1        1   120
#>  [54,]  48  12      1         11        0   200
#>  [55,]  47   5      1          3        1   130
#>  [56,]  47   9      1          6        0   170
#>  [57,]  46   3      1          0        1   119
#>  [58,]  49   4      0        180        0   117
#>  [59,]  47   7      0        180        0   145
#>  [60,]  50   6      1          2        1   140
#>  [61,]  49   7      1          7        1   110
#>  [62,]  46   3      1          1        1   140
#>  [63,]  46   9      1          9        1   122
#>  [64,]  50   7      0        180        1   110
#>  [65,]  49   2      0          2        0   105
#>  [66,]  51   1      0          1        1   145
#>  [67,]  47   2      0        180        0   150
#>  [68,]  49  23      0        179        1   112
#>  [69,]  46   6      1          0        1   156
#>  [70,]  52   2      0        180        1   170
#>  [71,]  50   4      0          4        1   100
#>  [72,]  51   3      1          2        0   113
#>  [73,]  50   9      0        180        0   130
#>  [74,]  47   6      0        180        1   162
#>  [75,]  51   8      0        180        1   140
#>  [76,]  52   2      0        180        0   155
#>  [77,]  46   3      0        180        1   120
#>  [78,]  46   1      1          1        0   145
#>  [79,]  50   4      1          1        0   150
#>  [80,]  48  17      1         10        0   111
#>  [81,]  52   4      1          4        0   152
#>  [82,]  53   5      0        180        1   140
#>  [83,]  54  17      1         12        1   102
#>  [84,]  53   5      0         77        0   159
#>  [85,]  53   7      1          0        0   199
#>  [86,]  51   3      1          1        0   140
#>  [87,]  50   2      0          5        1   106
#>  [88,]  50  14      1         13        0   170
#>  [89,]  53   8      1          7        0   160
#>  [90,]  51  25      1          1        0   202
#>  [91,]  53   4      0          4        0   140
#>  [92,]  52  14      1          7        1   200
#>  [93,]  48   6      0        180        0   160
#>  [94,]  48  11      1         10        0   120
#>  [95,]  53   4      1          0        1   156
#>  [96,]  51  13      0         99        1   160
#>  [97,]  49  16      0         16        0   125
#>  [98,]  55   3      1          1        0   150
#>  [99,]  54  23      1         10        0   131
#> [100,]  52   7      1          2        0   154
#> [101,]  52   4      0        180        1   180
#> [102,]  51  13      1         11        0   145
#> [103,]  54   4      1          0        1   121
#> [104,]  52   4      0        180        0   183
#> [105,]  50   3      0        174        1   153
#> [106,]  55  28      1         13        1   160
#> [107,]  49   1      0          1        1   110
#> [108,]  50   7      1          1        0   156
#> [109,]  53   9      0          9        1    95
#> [110,]  50   7      1          0        1   127
#> [111,]  56   4      1          1        1   130
#> [112,]  52   5      0        175        1   117
#> [113,]  55   1      0        180        0   127
#> [114,]  55   2      0          2        0   145
#> [115,]  54   7      1          0        1   100
#> [116,]  56   3      0        180        1   193
#> [117,]  56   2      0        180        0   132
#> [118,]  52   8      0        180        0   119
#> [119,]  53  18      1          9        1   150
#> [120,]  54   3      0        180        1   180
#> [121,]  55   6      0        180        0   170
#> [122,]  52  16      0         16        0   152
#> [123,]  53  10      1          9        0   172
#> [124,]  52  16      1         14        0   170
#> [125,]  53  15      0         15        1    90
#> [126,]  55   6      0        180        1   100
#> [127,]  55   6      1          5        1   138
#> [128,]  54  12      1          0        1   190
#> [129,]  55   2      0        134        1   140
#> [130,]  54   3      0        180        0   128
#> [131,]  55   1      0          2        0   130
#> [132,]  54   7      1          2        0   129
#> [133,]  52   9      1          3        0   170
#> [134,]  54   2      1          1        1   176
#> [135,]  57   5      1          3        1   138
#> [136,]  57   1      0          1        1   100
#> [137,]  56   4      1          0        1   140
#> [138,]  52   2      0        180        0   140
#> [139,]  55  11      1          7        0   104
#> [140,]  52  15      1         14        0   130
#> [141,]  56  14      1         11        0   130
#> [142,]  53   3      1          0        1   200
#> [143,]  57  10      0        180        1   170
#> [144,]  54   5      0        180        1   108
#> [145,]  55   3      1          1        1   156
#> [146,]  57   0      0          0        1   150
#> [147,]  59   3      1          1        0   172
#> [148,]  58   6      1          0        1    90
#> [149,]  53  15      1         10        1   130
#> [150,]  54  17      1          8        1   227
#> [151,]  55   9      1          2        1   147
#> [152,]  56   5      0          5        1   150
#> [153,]  53   4      0        147        1   145
#> [154,]  53   7      1          0        1   120
#> [155,]  57  11      1         10        1   129
#> [156,]  55   5      0          5        1   131
#> [157,]  59  15      1         10        0   140
#> [158,]  58   1      1          1        1   200
#> [159,]  55   5      1          0        0   140
#> [160,]  56   7      1          5        1   120
#> [161,]  55   2      0          2        0   106
#> [162,]  59   9      1          1        1   125
#> [163,]  57   1      0        180        0   148
#> [164,]  57   2      0          2        1   120
#> [165,]  60   5      1          1        0   138
#> [166,]  57   5      0        180        1   130
#> [167,]  58  11      1          9        1   124
#> [168,]  55   5      1          0        1   160
#> [169,]  57  10      1          9        0   103
#> [170,]  59   6      1          0        1   140
#> [171,]  59   5      0        180        1   155
#> [172,]  59   4      1          0        1   152
#> [173,]  58  26      1          0        1   189
#> [174,]  61   9      0          9        1   160
#> [175,]  58   4      1          3        0   120
#> [176,]  60   0      1          0        1    80
#> [177,]  59   2      1          1        0   140
#> [178,]  58   8      0        161        1   140
#> [179,]  58  14      1          6        0   190
#> [180,]  61   4      1          3        0   151
#> [181,]  61   9      1          8        0   150
#> [182,]  61   3      1          2        1   102
#> [183,]  61  20      1         13        0   130
#> [184,]  57  13      1         10        0   110
#> [185,]  57   2      1          0        1   116
#> [186,]  57   4      1          3        0   138
#> [187,]  61   3      0         17        0   143
#> [188,]  56  14      0         45        0   130
#> [189,]  57   3      1          2        0   120
#> [190,]  58  19      1         13        1   140
#> [191,]  56  13      1          6        1   158
#> [192,]  56  18      1         11        1   165
#> [193,]  58  11      0        172        1   135
#> [194,]  60  12      1          0        1   114
#> [195,]  55   9      1          7        1   135
#> [196,]  61   4      1          0        1   115
#> [197,]  56   8      1          8        0   120
#> [198,]  59  11      1          8        1   190
#> [199,]  57   1      0          1        0   126
#> [200,]  59  10      0        180        0   160
#> [201,]  61  13      0         13        0   210
#> [202,]  58   8      1          5        0   152
#> [203,]  62  10      1          0        1   153
#> [204,]  57   3      1          0        0   100
#> [205,]  61  18      0        170        0   140
#> [206,]  61  28      1          7        0   133
#> [207,]  58   8      1          3        1   150
#> [208,]  57   7      0        169        0   180
#> [209,]  61   7      0          7        1   150
#> [210,]  60   7      0          7        0   147
#> [211,]  61   6      0          6        0   134
#> [212,]  59  13      1          2        0   198
#> [213,]  57  12      1          9        1   120
#> [214,]  62   4      1          3        0   173
#> [215,]  58   2      0         30        0   202
#> [216,]  59   1      0        180        0   155
#> [217,]  59  16      1          9        1   133
#> [218,]  63   6      0         28        1   120
#> [219,]  61   5      0          5        1   110
#> [220,]  57  18      1          9        1    93
#> [221,]  58  11      1          9        0   179
#> [222,]  57   2      1          1        0   159
#> [223,]  62  17      1         10        1   180
#> [224,]  62   1      1          0        1   172
#> [225,]  63   3      1          1        0   180
#> [226,]  63   1      0        180        1   130
#> [227,]  63   4      1          3        0   222
#> [228,]  63   4      0        180        1   190
#> [229,]  63  15      1         10        1   126
#> [230,]  64   4      0        180        0   130
#> [231,]  63   4      1          1        0   155
#> [232,]  59   8      0        180        1   140
#> [233,]  61   9      1          9        1   150
#> [234,]  58   9      1          9        0   110
#> [235,]  62   7      0          7        0   150
#> [236,]  59   1      0         22        1   162
#> [237,]  58   2      0        180        0   127
#> [238,]  60   7      0          7        0   140
#> [239,]  59   5      1          1        0   148
#> [240,]  65  13      0        180        1   100
#> [241,]  63   1      0          1        0   162
#> [242,]  63   1      0          1        0   130
#> [243,]  59   4      0          4        0   149
#> [244,]  60   3      0          3        0   168
#> [245,]  64  10      1          9        0   160
#> [246,]  62   6      0          6        0   120
#> [247,]  59  10      0        180        1   130
#> [248,]  60   8      0         17        1   130
#> [249,]  61   6      1          1        1   117
#> [250,]  66   1      1          0        1   120
#> [251,]  65  36      1         11        0   140
#> [252,]  63   4      1          3        0   162
#> [253,]  66   3      1          1        0   127
#> [254,]  61  10      1          2        1   194
#> [255,]  64  32      1          9        1   160
#> [256,]  66   5      1          0        1   110
#> [257,]  65  10      1          8        1   120
#> [258,]  64   0      0          0        1    90
#> [259,]  64  21      1         10        0   190
#> [260,]  61  12      1         11        0   154
#> [261,]  61   4      0        180        1   113
#> [262,]  65   3      0        180        1   190
#> [263,]  63  16      1          7        1   110
#> [264,]  64   7      0        180        1   120
#> [265,]  66   6      1          1        1   130
#> [266,]  63  12      0         12        1   150
#> [267,]  62   3      1          1        1   199
#> [268,]  65   6      0          9        0   112
#> [269,]  65   3      1          0        1    80
#> [270,]  63   5      1          4        0   170
#> [271,]  63   2      1          1        0   180
#> [272,]  62  13      1         11        0   180
#> [273,]  64   2      0          2        0   201
#> [274,]  66  18      1          5        0   142
#> [275,]  66  16      1         11        1   169
#> [276,]  61  14      1          5        0   140
#> [277,]  61  15      1         10        0   130
#> [278,]  63   9      1          8        1   160
#> [279,]  63   3      1          2        0   120
#> [280,]  63   2      1          0        0   140
#> [281,]  64  19      1          8        1   160
#> [282,]  65   8      1          0        1   140
#> [283,]  67   6      0        180        1   170
#> [284,]  65  15      1         11        1   160
#> [285,]  68   5      1          4        1   150
#> [286,]  64  13      1         12        1   150
#> [287,]  64   6      1          0        1   125
#> [288,]  66  13      1          0        0   118
#> [289,]  64  14      1         13        1   150
#> [290,]  65   3      0          3        0   105
#> [291,]  66   3      1          0        1   135
#> [292,]  66   6      1          0        1   140
#> [293,]  68   1      0        180        1   166
#> [294,]  64  10      1          9        1   110
#> [295,]  63   7      1          0        0   162
#> [296,]  68   5      0          5        1    90
#> [297,]  63  10      0         16        1   160
#> [298,]  66  14      0        180        0   130
#> [299,]  64   1      0          1        1   120
#> [300,]  65  18      1          3        0   120
#> [301,]  63   1      1          0        1   155
#> [302,]  63  10      0         18        1   130
#> [303,]  67  11      0         11        0   150
#> [304,]  66  12      1         10        1   150
#> [305,]  66  11      1          0        0   100
#> [306,]  65   4      1          2        1   145
#> [307,]  69  12      0         15        1   140
#> [308,]  63   2      0        180        0   150
#> [309,]  65  11      1          6        0   130
#> [310,]  69  21      1         10        0   180
#> [311,]  69   6      0        180        1   100
#> [312,]  66   9      1          8        0   130
#> [313,]  63   8      0        180        1   120
#> [314,]  68  14      1         13        1   140
#> [315,]  65   8      1          0        1    90
#> [316,]  68  10      1         10        1   150
#> [317,]  63   2      1          0        0    99
#> [318,]  67   2      0        180        0   184
#> [319,]  65   6      0          6        0    80
#> [320,]  65  10      1          1        1   148
#> [321,]  66  19      1         12        1   150
#> [322,]  67  12      1         12        0   160
#> [323,]  69   6      0         99        1   140
#> [324,]  65   4      1          1        0   130
#> [325,]  66   4      0        180        1   130
#> [326,]  64  11      0         11        0   125
#> [327,]  69   4      1          3        1   150
#> [328,]  69  17      1         10        0   140
#> [329,]  69   8      0         93        0   140
#> [330,]  66   6      0        180        0   140
#> [331,]  65   1      0          1        1   120
#> [332,]  68  18      1          0        1   160
#> [333,]  65   6      0        101        1   115
#> [334,]  71   3      0          5        0   112
#> [335,]  70   4      1          0        1   180
#> [336,]  69   8      0        180        1   153
#> [337,]  66   4      0        180        0   130
#> [338,]  67   6      1          4        0   130
#> [339,]  68  18      1         14        1   170
#> [340,]  69   0      0          0        1   148
#> [341,]  65   2      0        180        0   130
#> [342,]  68   7      1          0        1   150
#> [343,]  69   8      0        180        1   180
#> [344,]  70  22      1         13        0   103
#> [345,]  68   6      0        180        0   145
#> [346,]  69   6      1          4        1   174
#> [347,]  72   3      1          0        1   132
#> [348,]  69   8      1          7        1   108
#> [349,]  67   3      0        180        0   110
#> [350,]  66   2      1          1        0   123
#> [351,]  68  18      0         18        1   100
#> [352,]  67  14      0        172        1   140
#> [353,]  66   2      0        180        0   130
#> [354,]  69   4      1          3        0   132
#> [355,]  68   2      0          7        1   130
#> [356,]  69   8      1          2        0   121
#> [357,]  67  13      1          9        0   130
#> [358,]  70   3      0        123        0   130
#> [359,]  70   9      0        180        1   142
#> [360,]  72   5      1          4        0   170
#> [361,]  68   3      0         19        0   135
#> [362,]  69   1      0          1        1   110
#> [363,]  67   1      0          1        1    60
#> [364,]  67   4      0         60        1   136
#> [365,]  69   5      0         76        0   120
#> [366,]  72  13      1         11        1   195
#> [367,]  68  10      1          8        1   160
#> [368,]  70  35      1          0        1   105
#> [369,]  70   7      0          7        0   102
#> [370,]  68   7      1          2        0   135
#> [371,]  73  20      1          0        1   170
#> [372,]  69  10      1          6        1   120
#> [373,]  70  11      0        180        1   210
#> [374,]  72  19      1          8        0   120
#> [375,]  67   5      1          0        1   147
#> [376,]  67   9      0        180        0   158
#> [377,]  72   2      0          2        1   100
#> [378,]  67   4      1          1        0   134
#> [379,]  72   6      1          5        0   115
#> [380,]  71   1      0        173        1   188
#> [381,]  70   3      0        180        0   121
#> [382,]  69   3      0        180        0   220
#> [383,]  68   4      1          3        0   210
#> [384,]  71   5      0        180        0   191
#> [385,]  73   6      0        180        1   117
#> [386,]  69  16      1         10        1   140
#> [387,]  73   6      1          0        1   270
#> [388,]  71   2      1          0        1   180
#> [389,]  73   7      0          7        1   140
#> [390,]  68  15      1         13        1   130
#> [391,]  70   3      0          3        1   159
#> [392,]  70  13      1          9        0   100
#> [393,]  72   6      0        180        1   130
#> [394,]  74   8      1          0        1    85
#> [395,]  73   4      0        180        1   154
#> [396,]  71   3      1          1        0   150
#> [397,]  71  15      1         11        0   165
#> [398,]  74  20      0         20        1   180
#> [399,]  68   9      0        180        1   120
#> [400,]  73   3      1          0        1   136
#> [401,]  71   3      1          2        1   190
#> [402,]  73  10      1          8        0   106
#> [403,]  69  12      1          1        1   149
#> [404,]  70  26      1         11        1   120
#> [405,]  70   3      0        180        1   154
#> [406,]  73   6      0        180        0   110
#> [407,]  74   3      0          3        1   150
#> [408,]  73  17      1         11        0   140
#> [409,]  71  13      1          8        0   121
#> [410,]  70   4      1          0        1   140
#> [411,]  71  14      1         13        1   170
#> [412,]  72  10      1          8        1   153
#> [413,]  69   7      0        180        1   144
#> [414,]  72  15      1         13        0   156
#> [415,]  70   8      0          8        0   120
#> [416,]  71  10      1          9        1   120
#> [417,]  75   1      0          1        0   133
#> [418,]  73  10      1          9        1   146
#> [419,]  72  10      1          9        1   160
#> [420,]  74  15      1          9        1   179
#> [421,]  71   2      0         10        1   112
#> [422,]  73   1      0          1        1    80
#> [423,]  73  10      1          8        0   120
#> [424,]  70   7      1          4        0   184
#> [425,]  73  10      0        180        0   162
#> [426,]  72  11      0         11        1   140
#> [427,]  70   3      0          3        0   150
#> [428,]  72   2      0        180        0   120
#> [429,]  75   1      0        180        1   140
#> [430,]  72   4      1          0        1   197
#> [431,]  73   5      0        180        0   126
#> [432,]  73   4      0        180        0   124
#> [433,]  74  34      1          8        1   233
#> [434,]  71  32      1         12        1   107
#> [435,]  72   5      0        180        0   154
#> [436,]  72   3      0        180        0   160
#> [437,]  76   5      0          5        1   130
#> [438,]  77  11      0         11        1   150
#> [439,]  72   7      1          2        0   142
#> [440,]  73  15      0         15        1   160
#> [441,]  76   1      0        180        0   114
#> [442,]  74   2      1          1        0   140
#> [443,]  76   8      1          0        1   141
#> [444,]  74  19      1          4        1   200
#> [445,]  72   4      0         85        1   120
#> [446,]  76  17      1          0        1   200
#> [447,]  73   4      1          3        1   125
#> [448,]  75   4      1          0        1   122
#> [449,]  73  13      1         11        0   195
#> [450,]  74   8      1          0        1   105
#> [451,]  74   6      0        180        0   160
#> [452,]  75   1      0          1        1   125
#> [453,]  74   2      0        180        0   111
#> [454,]  73   1      0         52        1   105
#> [455,]  73   0      0        180        0   156
#> [456,]  72   5      0        180        0   120
#> [457,]  76   5      0        180        0   185
#> [458,]  74  10      1          0        1   135
#> [459,]  76   5      1          0        1   167
#> [460,]  75   9      0        180        1   140
#> [461,]  73  33      1         12        1   175
#> [462,]  77   5      1          0        0   123
#> [463,]  73  10      1          9        0   146
#> [464,]  77   1      1          0        1    90
#> [465,]  76  12      1         11        1   120
#> [466,]  73   7      1          0        0   174
#> [467,]  74   6      0         79        1   140
#> [468,]  75   3      1          1        1   171
#> [469,]  75   6      0        180        0   150
#> [470,]  74   2      1          0        1   130
#> [471,]  78  18      0         18        1   144
#> [472,]  77   3      0        180        0   110
#> [473,]  76  29      0         47        0    90
#> [474,]  73  11      1          2        1   110
#> [475,]  78   7      0          7        1   133
#> [476,]  74  15      0        180        1   172
#> [477,]  78   8      1          6        1   110
#> [478,]  74   7      0          7        0   161
#> [479,]  76  13      1          1        1   170
#> [480,]  79   6      0        180        0   170
#> [481,]  78   0      0        180        1   212
#> [482,]  78  13      1          5        0   130
#> [483,]  75   5      0        119        1   150
#> [484,]  75  12      1          1        1   120
#> [485,]  78  15      0        180        1   270
#> [486,]  80   8      0          8        1   120
#> [487,]  75  13      1          6        0   150
#> [488,]  74  10      1          8        0   135
#> [489,]  76   1      0          1        1    83
#> [490,]  79   4      0         80        0   145
#> [491,]  78  12      1          9        0   150
#> [492,]  75   4      1          0        0   212
#> [493,]  78  10      0        180        1   130
#> [494,]  76  11      1          0        0   120
#> [495,]  75  11      1          4        0   162
#> [496,]  75   3      0          3        0     0
#> [497,]  76   7      0         29        1   150
#> [498,]  77  24      0         24        1   160
#> [499,]  80   9      0         23        1   128
#> [500,]  80   6      0          6        1   150
#> [501,]  78   6      1          0        1   240
#> [502,]  76   3      1          0        1   140
#> [503,]  78  11      1          1        1   140
#> [504,]  79   2      1          0        1   121
#> [505,]  78  11      1          8        1   118
#> [506,]  76   4      0          4        1   160
#> [507,]  76  12      1         10        1   127
#> [508,]  80   3      1          0        1   120
#> [509,]  75   2      1          1        1   204
#> [510,]  78  11      0        180        1   135
#> [511,]  76   1      0          1        1    90
#> [512,]  77   7      0        180        1   170
#> [513,]  77   6      0          6        1   144
#> [514,]  79   4      1          0        1   120
#> [515,]  81   1      0        180        0   120
#> [516,]  77   9      1          4        0   141
#> [517,]  82   5      0          8        1   120
#> [518,]  80  40      1          0        1   138
#> [519,]  78   4      0         59        1   112
#> [520,]  80  17      1         12        0   100
#> [521,]  79  10      0         10        1   120
#> [522,]  80  15      1          0        1    90
#> [523,]  81   4      1          2        1   126
#> [524,]  79  28      0        164        0   100
#> [525,]  80   9      0        118        1   186
#> [526,]  80   6      0        173        1   160
#> [527,]  81   3      0        180        0   184
#> [528,]  81   2      0        175        0   172
#> [529,]  77  13      1          0        1   190
#> [530,]  78  15      0         15        0   165
#> [531,]  80   5      1          1        1   108
#> [532,]  79   3      0          3        1   101
#> [533,]  78  26      1          5        0   194
#> [534,]  76   1      0        166        0   131
#> [535,]  81   4      1          1        1   104
#> [536,]  78  20      1          0        1   109
#> [537,]  77  10      1          8        1   130
#> [538,]  82   3      1          1        1   144
#> [539,]  77   5      0         85        0   188
#> [540,]  79   6      0          6        0   152
#> [541,]  80   6      1          0        1   119
#> [542,]  80   5      0          5        1   130
#> [543,]  77   4      0        180        1    98
#> [544,]  81   1      0        108        0   129
#> [545,]  78  12      0        180        0   134
#> [546,]  79   1      0        125        0   193
#> [547,]  82  21      1          2        0   155
#> [548,]  84  22      1         10        0   180
#> [549,]  79   4      0          4        1   121
#> [550,]  82   5      0        180        0   110
#> [551,]  83   5      0        180        0   148
#> [552,]  79   7      1          6        0   130
#> [553,]  81  11      1          8        0   160
#> [554,]  80  11      1          8        0   170
#> [555,]  78  23      1         10        1   145
#> [556,]  82   8      1          1        0   128
#> [557,]  79   1      0        180        1   170
#> [558,]  81  15      0        180        1   140
#> [559,]  80   7      1          0        1   146
#> [560,]  81  20      1          9        0   170
#> [561,]  80   6      1          0        1   150
#> [562,]  80   8      1          7        0   160
#> [563,]  79   7      0        177        0   197
#> [564,]  79   0      1          0        1    96
#> [565,]  85   4      0        180        0    90
#> [566,]  83   2      0          2        1   155
#> [567,]  84   4      0        167        0   198
#> [568,]  84   5      0        180        1   203
#> [569,]  81   1      0          1        1   150
#> [570,]  84   1      0         38        1   205
#> [571,]  83   3      0        180        0   174
#> [572,]  81   4      0         90        1   138
#> [573,]  79   9      1          8        0   150
#> [574,]  80  13      1          8        1   140
#> [575,]  79   4      0          4        1    60
#> [576,]  80   6      0         71        1   189
#> [577,]  83   1      0          1        1   100
#> [578,]  82  19      0         19        0   120
#> [579,]  80  30      1         13        0   220
#> [580,]  83   3      0        114        0    98
#> [581,]  82   0      0          2        1   100
#> [582,]  83   1      0        180        0   160
#> [583,]  84  15      1         13        1   110
#> [584,]  81   1      0          1        1   145
#> [585,]  81  12      0         12        1   163
#> [586,]  82  16      1          8        0   103
#> [587,]  86  12      0        180        1   120
#> [588,]  83  12      1          2        1   170
#> [589,]  81  19      1         14        0   120
#> [590,]  82   3      1          2        0   130
#> [591,]  82  15      1          0        0   183
#> [592,]  83   7      0        126        0   135
#> [593,]  81  16      1          9        0   180
#> [594,]  85   3      0          3        1   118
#> [595,]  81   2      1          0        1   118
#> [596,]  81   4      0        180        0   160
#> [597,]  83   9      0        180        1   149
#> [598,]  82   1      0        180        1   193
#> [599,]  87   2      0          5        1   137
#> [600,]  86  12      1          0        1   132
#> [601,]  82  14      1         11        1   103
#> [602,]  86   6      1          0        1   140
#> [603,]  84  16      0         70        1   150
#> [604,]  83  19      0         43        0   150
#> [605,]  84   3      1          2        0   125
#> [606,]  83  10      1          0        1   190
#> [607,]  88  14      1          3        1   130
#> [608,]  87   2      0        180        0   113
#> [609,]  84   9      0         92        1   110
#> [610,]  84   3      0        180        1   170
#> [611,]  86   4      0         38        1   122
#> [612,]  86  13      0        177        0   163
#> [613,]  85   3      0          3        1   113
#> [614,]  86   6      0          6        1   117
#> [615,]  83  20      1          3        1   150
#> [616,]  88   4      0          4        1   115
#> [617,]  85  22      0         22        1   184
#> [618,]  83   9      0         65        1   150
#> [619,]  87   2      0        180        1   130
#> [620,]  86   6      0         46        0   173
#> [621,]  88   3      0        115        0   110
#> [622,]  88   2      0        180        1    68
#> [623,]  86  15      1          8        1   109
#> [624,]  88   4      0          4        0    86
#> [625,]  89   5      0        119        1   140
#> [626,]  87   6      0        180        1   110
#> [627,]  87   1      0          1        0   170
#> [628,]  84   8      0        180        1   119
#> [629,]  85   8      0          8        1   136
#> [630,]  84   2      0        110        1   174
#> [631,]  87  29      0         29        1    97
#> [632,]  87  15      1          9        1   138
#> [633,]  89  10      0         46        1   170
#> [634,]  90  14      0         14        1   100
#> [635,]  88   1      0          1        0   135
#> [636,]  86   4      0        180        1   145
#> [637,]  91   8      0          8        0   100
#> [638,]  87   2      0        180        0   160
#> [639,]  87   6      1          0        0   125
#> [640,]  91  10      0        145        0   135
#> [641,]  88   7      0         24        0   119
#> [642,]  88   8      0         50        1   154
#> [643,]  90  11      1         10        1   186
#> [644,]  87   6      0        126        1   168
#> [645,]  86   9      1          7        0   130
#> [646,]  87   5      0         36        1   150
#> [647,]  89   3      1          1        1   160
#> [648,]  91   3      0         33        1   137
#> [649,]  88   5      0        158        0   100
#> [650,]  87   7      0         74        1   105
#> [651,]  89  12      1          0        1   130
#> [652,]  89   2      0        168        0   118
#> [653,]  92   7      0          7        1   110
#> [654,]  89   4      0          4        1   159
#> [655,]  90  18      0        180        0   188
#> [656,]  94   6      0         50        0    78
#> [657,]  90   1      0          1        1   118
#> [658,]  91   2      0          2        1   116
#> [659,]  93   8      0        179        1   110
#> [660,]  94   8      0          8        1   142
#> [661,]  92   4      0         76        1   149
#> [662,]  91   1      0        180        0   158
#> [663,]  90   3      0         67        0   162
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  93   4      0        180        1   135
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+ 180.0+  12.0    5.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+   2.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61]   7.0  180.0+ 180.0+ 180.0+   2.0    1.0  180.0+ 179.0+ 180.0+ 180.0+
#>  [71]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  88.0+
#>  [81]   4.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+
#>  [91]   4.0+  85.0  180.0+ 180.0+ 166.0+  99.0   16.0+ 180.0+ 152.0+   7.0+
#> [101] 180.0+  13.0+ 180.0+ 180.0+ 174.0+  28.0    1.0  180.0+   9.0+ 180.0+
#> [111] 180.0+ 175.0+ 180.0+   2.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+  16.0+ 180.0+  16.0   15.0+ 180.0+ 180.0+  12.0+ 134.0+ 180.0+
#> [131]   2.0  180.0+ 180.0+ 180.0+ 140.0    1.0  165.0  180.0+ 180.0+ 180.0+
#> [141] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 171.0+
#> [151]  15.0    5.0+ 147.0+ 180.0+ 180.0+   5.0+ 180.0+   1.0  180.0+ 180.0+
#> [161]   2.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0 
#> [171] 180.0+ 180.0+ 180.0+   9.0+ 180.0+   0.5  180.0+ 161.0+ 171.0+ 180.0+
#> [181] 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+  17.0   45.0    3.0+  19.0 
#> [191] 180.0+ 180.0+ 172.0+ 172.0+  24.0  180.0+   8.0  180.0+   1.0+ 180.0+
#> [201]  13.0+   8.0+ 180.0+ 180.0+ 170.0   94.0  180.0+ 169.0    7.0    7.0+
#> [211]   6.0  180.0+ 180.0+ 180.0+  30.0  180.0+ 180.0+  28.0    5.0   18.0 
#> [221] 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [231]   4.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+   7.0+ 180.0+ 180.0+
#> [241]   1.0    1.0    4.0+   3.0+ 167.0    6.0+ 180.0+  17.0  180.0+ 180.0+
#> [251]  36.0  180.0+   3.0+  88.0  180.0+ 180.0+ 180.0+   0.5  180.0+  12.0+
#> [261] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0    3.0  180.0+
#> [271] 180.0+ 180.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+
#> [281] 103.0   15.0  180.0+ 180.0+   5.0+  13.0  180.0+ 166.0+  14.0+   3.0 
#> [291]   3.0+ 180.0+ 180.0+ 180.0+   7.0+   5.0   16.0  180.0+   1.0  123.0+
#> [301]   1.0+  18.0   11.0+  80.0  180.0+   4.0+  15.0  180.0+ 180.0+ 174.0+
#> [311] 180.0+ 180.0+ 180.0+ 180.0+   8.0+  10.0  180.0+ 180.0+   6.0  180.0+
#> [321]  19.0+  12.0   99.0  180.0+ 180.0+  11.0+ 152.0+ 180.0+  93.0  180.0+
#> [331]   1.0   18.0+ 101.0    5.0  180.0+ 180.0+ 180.0+   6.0  180.0+   0.5 
#> [341] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  97.0  180.0+   8.0+ 180.0+   2.0+
#> [351]  18.0  172.0+ 180.0+ 180.0+   7.0    8.0+  13.0+ 123.0  180.0+ 180.0+
#> [361]  19.0    1.0    1.0   60.0   76.0  132.0   10.0+ 180.0+   7.0+   7.0+
#> [371] 124.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0   76.0  180.0+ 173.0+
#> [381] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+   6.0  180.0+   7.0+  15.0 
#> [391]   3.0+  13.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+  20.0  180.0+ 180.0+
#> [401]   3.0   87.0   12.0  180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0  180.0+
#> [411]  14.0+  10.0+ 180.0+ 180.0+   8.0+ 179.0+   1.0  180.0+ 159.0  180.0+
#> [421]  10.0    1.0   10.0  104.0+ 180.0+  11.0    3.0+ 180.0+ 180.0+ 180.0+
#> [431] 180.0+ 180.0+  34.0  177.0+ 180.0+ 180.0+   5.0   11.0+   7.0   15.0+
#> [441] 180.0+ 180.0+ 180.0+ 180.0+  85.0   17.0+ 180.0+   4.0  180.0+ 180.0+
#> [451] 180.0+   1.0  180.0+  52.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [461]  33.0    5.0  180.0+   1.0   12.0    7.0+  79.0    3.0  180.0+ 176.0+
#> [471]  18.0  180.0+  47.0   11.0    7.0  180.0+   8.0+   7.0  180.0+ 180.0+
#> [481] 180.0+ 172.0  119.0   12.0  180.0+   8.0  180.0+ 180.0+   1.0   80.0 
#> [491] 180.0+   4.0+ 180.0+  11.0  152.0+   3.0   29.0   24.0   23.0    6.0 
#> [501] 180.0+   3.0+ 180.0+ 180.0+  11.0    4.0  180.0+   3.0+   2.0+ 180.0+
#> [511]   1.0  180.0+   6.0  138.0  180.0+  71.0    8.0   40.0   59.0   17.0 
#> [521]  10.0+ 180.0+  93.0  164.0  118.0  173.0  180.0+ 175.0+  22.0   15.0+
#> [531]   5.0+   3.0  171.0+ 166.0+  71.0   20.0+  10.0  180.0+  85.0    6.0+
#> [541]   6.0    5.0  180.0+ 108.0  180.0+ 125.0  180.0+ 180.0+   4.0  180.0+
#> [551] 180.0+ 180.0+ 180.0+ 169.0   70.0  180.0+ 180.0+ 180.0+   7.0+  20.0 
#> [561] 180.0+ 180.0+ 177.0+   0.5  180.0+   2.0  167.0  180.0+   1.0   38.0 
#> [571] 180.0+  90.0  180.0+ 180.0+   4.0   71.0    1.0   19.0   30.0  114.0 
#> [581]   2.0  180.0+ 180.0+   1.0   12.0   16.0+ 180.0+  77.0  180.0+   3.0 
#> [591]  83.0  126.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+
#> [601] 174.0    6.0   70.0   43.0  180.0+ 180.0+  14.0  180.0+  92.0  180.0+
#> [611]  38.0  177.0    3.0+   6.0+  20.0    4.0   22.0   65.0  180.0+  46.0 
#> [621] 115.0  180.0+ 180.0+   4.0  119.0  180.0+   1.0+ 180.0+   8.0  110.0 
#> [631]  29.0  180.0+  46.0   14.0    1.0+ 180.0+   8.0  180.0+  25.0  145.0 
#> [641]  24.0   50.0   11.0  126.0  180.0+  36.0    3.0+  33.0  158.0   74.0 
#> [651] 180.0+ 168.0    7.0    4.0  180.0+  50.0    1.0+   2.0  179.0+   8.0+
#> [661]  76.0  180.0+  67.0    8.0   26.0   53.0    0.5   69.0    2.0  180.0+
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
#>   0.8222488 
```
