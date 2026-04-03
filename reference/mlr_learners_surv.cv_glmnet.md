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
#>      Lambda Index Measure      SE Nonzero
#> min 0.00325    45   2.721 0.09794       6
#> 1se 0.05816    14   2.816 0.10130       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35  10      1          9        0   106
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  36   1      0        180        1   155
#>   [9,]  35   0      0        180        1   119
#>  [10,]  38  12      1          8        1   120
#>  [11,]  36   5      1          0        1   115
#>  [12,]  33   6      1          1        1   115
#>  [13,]  40  12      1          9        0   153
#>  [14,]  42   3      1          1        1   130
#>  [15,]  37   1      1          0        1   146
#>  [16,]  40   2      1          1        1   148
#>  [17,]  42   2      0        180        1   100
#>  [18,]  38   5      1          3        0   125
#>  [19,]  42   2      0          2        0   140
#>  [20,]  40   6      0        180        1   138
#>  [21,]  42   2      0        180        0   100
#>  [22,]  43   3      1          0        1   100
#>  [23,]  41   2      1          1        0   166
#>  [24,]  42   4      0        180        0   162
#>  [25,]  42  15      1         13        1   125
#>  [26,]  40   3      1          1        0   170
#>  [27,]  43   2      1          1        1   116
#>  [28,]  42   2      0        180        1   124
#>  [29,]  44   5      1          1        0   170
#>  [30,]  45   3      0        180        1   154
#>  [31,]  41  10      1          8        0   150
#>  [32,]  44   3      0        180        0   141
#>  [33,]  45   9      1          7        0   110
#>  [34,]  41   5      1          4        1   141
#>  [35,]  44   2      1          1        1   150
#>  [36,]  43   2      0        180        1   140
#>  [37,]  45   2      0        180        1   140
#>  [38,]  47   4      1          3        0   118
#>  [39,]  48  15      0        180        1   160
#>  [40,]  43  29      0        180        1   180
#>  [41,]  45   4      1          0        0   124
#>  [42,]  43  10      0        180        0   185
#>  [43,]  47   6      1          0        1   116
#>  [44,]  46  13      1         10        0   100
#>  [45,]  44   0      1          0        1    96
#>  [46,]  45   8      1          0        1   117
#>  [47,]  49   5      0         73        1   136
#>  [48,]  45   5      0          5        0   141
#>  [49,]  46   2      1          1        1   122
#>  [50,]  46   6      1          0        1   100
#>  [51,]  44   4      1          0        1   114
#>  [52,]  44   9      1          8        1   135
#>  [53,]  45   5      0        180        1   190
#>  [54,]  46   4      0        180        1   121
#>  [55,]  46  15      0        180        1   120
#>  [56,]  45   9      1          0        1   145
#>  [57,]  48   3      0        180        0   154
#>  [58,]  48  12      1         11        0   200
#>  [59,]  47   5      1          3        1   130
#>  [60,]  49   4      0        180        0   117
#>  [61,]  47  10      0         10        1   140
#>  [62,]  47   7      0        180        0   145
#>  [63,]  49   7      1          7        1   110
#>  [64,]  49   2      0          2        0   105
#>  [65,]  51   1      0          1        1   145
#>  [66,]  47   2      0        180        0   150
#>  [67,]  49  23      0        179        1   112
#>  [68,]  52   2      0        180        1   170
#>  [69,]  50   7      1          0        1    92
#>  [70,]  51   3      1          2        0   113
#>  [71,]  50   1      1          0        0   150
#>  [72,]  49   7      1          4        1    90
#>  [73,]  47   6      0        180        1   162
#>  [74,]  51   8      0        180        1   140
#>  [75,]  52   2      0        180        0   155
#>  [76,]  46   3      0        180        1   120
#>  [77,]  46   1      1          1        0   145
#>  [78,]  50   4      1          1        0   150
#>  [79,]  48   7      1          0        1   110
#>  [80,]  53   8      0         36        1   160
#>  [81,]  47   2      1          1        0   110
#>  [82,]  49   9      1          3        0   102
#>  [83,]  54  17      1         12        1   102
#>  [84,]  53   5      0         77        0   159
#>  [85,]  54   6      1          3        0   129
#>  [86,]  50   2      0          5        1   106
#>  [87,]  50  10      1          6        0   122
#>  [88,]  48   3      1          2        0   150
#>  [89,]  51  25      1          1        0   202
#>  [90,]  49   5      1          2        1   150
#>  [91,]  53   4      0          4        0   140
#>  [92,]  52  14      1          7        1   200
#>  [93,]  53   4      1          0        1   156
#>  [94,]  54   9      1          0        1   138
#>  [95,]  49  16      0         16        0   125
#>  [96,]  52   7      1          2        0   154
#>  [97,]  55   6      1          2        1   114
#>  [98,]  54   9      1          1        0   130
#>  [99,]  55   4      1          2        0   150
#> [100,]  51  13      1         11        0   145
#> [101,]  50   5      1          4        1   150
#> [102,]  54   4      1          0        1   121
#> [103,]  49   1      0          1        1   110
#> [104,]  53   9      0          9        1    95
#> [105,]  53   8      1          0        1   130
#> [106,]  50   7      1          0        1   127
#> [107,]  52   5      0        175        1   117
#> [108,]  55   1      0        180        0   127
#> [109,]  55   2      0          2        0   145
#> [110,]  54   1      0        180        0   162
#> [111,]  54   7      1          0        1   100
#> [112,]  56   2      0        180        0   132
#> [113,]  55   5      1          4        1   120
#> [114,]  53  18      1          9        1   150
#> [115,]  54   3      0        180        1   180
#> [116,]  52  16      0         16        0   152
#> [117,]  53  10      1          9        0   172
#> [118,]  52  16      1         14        0   170
#> [119,]  53  15      0         15        1    90
#> [120,]  53   4      0        180        1   150
#> [121,]  55   6      0        180        1   100
#> [122,]  55   6      1          5        1   138
#> [123,]  55   2      0        134        1   140
#> [124,]  54   3      0        180        0   128
#> [125,]  55   1      0          2        0   130
#> [126,]  57   3      0          3        0   120
#> [127,]  54   7      1          2        0   129
#> [128,]  54   2      1          1        0   135
#> [129,]  54   2      1          1        1   176
#> [130,]  57   1      0          1        1   100
#> [131,]  56   4      1          0        1   140
#> [132,]  52   2      0        180        0   140
#> [133,]  55  11      1          7        0   104
#> [134,]  56  14      1         11        0   130
#> [135,]  53   3      1          0        1   200
#> [136,]  58   8      0          8        1   130
#> [137,]  54   5      0        180        1   108
#> [138,]  55   3      1          1        1   156
#> [139,]  53  21      1         13        1   130
#> [140,]  57   4      0        180        1   119
#> [141,]  58   6      1          0        1    90
#> [142,]  55   9      1          2        1   147
#> [143,]  53   4      0        147        1   145
#> [144,]  57  11      1         10        1   129
#> [145,]  54   7      1          0        1   141
#> [146,]  59  15      1         10        0   140
#> [147,]  58   1      1          1        1   200
#> [148,]  56   7      1          5        1   120
#> [149,]  55   2      0          2        0   106
#> [150,]  59   9      1          1        1   125
#> [151,]  60  11      1          9        0   106
#> [152,]  59   3      0        180        0   120
#> [153,]  58   4      1          0        1   160
#> [154,]  57   2      0          2        1   120
#> [155,]  57   5      0        180        1   130
#> [156,]  58  11      1          9        1   124
#> [157,]  55   5      1          0        1   160
#> [158,]  57  10      1          9        0   103
#> [159,]  58   4      1          3        0   120
#> [160,]  59   2      1          1        0   140
#> [161,]  58   8      0        161        1   140
#> [162,]  61   4      1          3        0   151
#> [163,]  61   9      1          8        0   150
#> [164,]  61   3      1          2        1   102
#> [165,]  58  10      0         10        1   150
#> [166,]  57   4      1          3        0   138
#> [167,]  56  14      0         45        0   130
#> [168,]  57   3      1          2        0   120
#> [169,]  56  18      1         11        1   165
#> [170,]  55   4      1          3        1   160
#> [171,]  58  11      0        172        1   135
#> [172,]  56   8      1          8        0   120
#> [173,]  61  13      1         12        1   130
#> [174,]  57   1      0          1        0   126
#> [175,]  59   5      1          2        0   182
#> [176,]  58   5      1          1        1   135
#> [177,]  59  10      0        180        0   160
#> [178,]  61   8      0         77        0   120
#> [179,]  61  13      0         13        0   210
#> [180,]  58   8      1          5        0   152
#> [181,]  62   7      1          2        1   180
#> [182,]  57   3      1          0        0   100
#> [183,]  61  28      1          7        0   133
#> [184,]  58   8      1          3        1   150
#> [185,]  61   7      0          7        1   150
#> [186,]  60   7      0          7        0   147
#> [187,]  61   6      0          6        0   134
#> [188,]  59  13      1          2        0   198
#> [189,]  57  12      1          9        1   120
#> [190,]  62   4      1          0        0   160
#> [191,]  60  17      1          8        1   140
#> [192,]  58   3      1          0        1   146
#> [193,]  59   1      0        180        0   155
#> [194,]  59  16      1          9        1   133
#> [195,]  61  13      0         13        0   120
#> [196,]  61   5      0          5        1   160
#> [197,]  62  17      1         10        1   180
#> [198,]  62   1      1          0        1   172
#> [199,]  58   7      0        180        1   150
#> [200,]  63   3      1          1        0   180
#> [201,]  63   1      0        180        1   130
#> [202,]  61   7      0        180        0   135
#> [203,]  63   4      0        180        1   190
#> [204,]  64   4      0        180        0   130
#> [205,]  60  18      1         13        0   132
#> [206,]  59   8      0        180        1   140
#> [207,]  61   9      1          9        1   150
#> [208,]  62   7      0          7        0   150
#> [209,]  59   1      0         22        1   162
#> [210,]  58   2      0        180        0   127
#> [211,]  60   7      0          7        0   140
#> [212,]  59   5      1          1        0   148
#> [213,]  61  15      1         13        0   170
#> [214,]  60   3      0          3        0   168
#> [215,]  62   6      0          6        0   120
#> [216,]  59  10      0        180        1   130
#> [217,]  61   6      1          1        1   117
#> [218,]  64  12      1         11        0   160
#> [219,]  66   1      1          0        1   120
#> [220,]  64   6      1          0        1   140
#> [221,]  63  10      1          0        1   148
#> [222,]  63  14      1          9        0   123
#> [223,]  63   4      1          3        0   162
#> [224,]  66   3      1          1        0   127
#> [225,]  61  10      1          2        1   194
#> [226,]  64  32      1          9        1   160
#> [227,]  63  12      1          9        0   114
#> [228,]  63   7      0        180        0   120
#> [229,]  65  10      1          8        1   120
#> [230,]  64   0      0          0        1    90
#> [231,]  60   6      0        180        0   130
#> [232,]  64   9      0        180        0   150
#> [233,]  61   4      0        180        1   113
#> [234,]  65   3      0        180        1   190
#> [235,]  63  16      1          7        1   110
#> [236,]  62   3      1          1        1   199
#> [237,]  65   3      1          0        1    80
#> [238,]  63   2      1          1        0   180
#> [239,]  62  13      1         11        0   180
#> [240,]  66  18      1          5        0   142
#> [241,]  66  16      1         11        1   169
#> [242,]  62   9      0        180        0   145
#> [243,]  61  14      1          5        0   140
#> [244,]  61  15      1         10        0   130
#> [245,]  63   9      1          8        1   160
#> [246,]  63   3      1          2        0   120
#> [247,]  63   2      1          0        0   140
#> [248,]  64  19      1          8        1   160
#> [249,]  67   6      0        180        1   170
#> [250,]  65  15      1         11        1   160
#> [251,]  68   5      1          4        1   150
#> [252,]  64  13      1         12        1   150
#> [253,]  66   7      1          0        1   115
#> [254,]  65   3      0          3        0   105
#> [255,]  67   4      1          3        0   130
#> [256,]  66   3      1          0        1   135
#> [257,]  66   6      1          0        1   140
#> [258,]  68   1      0        180        1   166
#> [259,]  63   7      1          0        0   162
#> [260,]  67   8      1          1        1   130
#> [261,]  68   5      0          5        1    90
#> [262,]  63  10      0         16        1   160
#> [263,]  66  14      0        180        0   130
#> [264,]  68  18      0        180        1   260
#> [265,]  65  17      1         14        1   100
#> [266,]  63   8      1          1        1   162
#> [267,]  65  18      1          3        0   120
#> [268,]  67  11      0         11        0   150
#> [269,]  68  11      0        180        0   160
#> [270,]  68  14      0         79        0   172
#> [271,]  66  12      1         10        1   150
#> [272,]  65  15      1         12        1   150
#> [273,]  66  11      1          0        0   100
#> [274,]  66  15      1         13        1   160
#> [275,]  63   2      0        180        0   150
#> [276,]  65  11      1          6        0   130
#> [277,]  69  21      1         10        0   180
#> [278,]  69   6      0        180        1   100
#> [279,]  66   9      1          8        0   130
#> [280,]  63   8      0        180        1   120
#> [281,]  68  14      1         13        1   140
#> [282,]  65   8      1          0        1    90
#> [283,]  66   3      0          3        1   138
#> [284,]  69   1      1          0        0   170
#> [285,]  67   1      0        180        1   160
#> [286,]  68  10      1         10        1   150
#> [287,]  65   1      1          0        0   133
#> [288,]  67   7      1          4        1   130
#> [289,]  67   2      0        180        0   184
#> [290,]  65  10      1          1        1   148
#> [291,]  66   4      0        180        1   130
#> [292,]  64  11      0         11        0   125
#> [293,]  64   4      0        180        1   140
#> [294,]  64   0      1          0        1   118
#> [295,]  67   2      0         18        0   131
#> [296,]  66   7      1          5        1   131
#> [297,]  66   4      0        180        0   177
#> [298,]  68   4      1          0        1   160
#> [299,]  65  13      1         12        1   130
#> [300,]  69   8      0         93        0   140
#> [301,]  64  21      0         21        1   155
#> [302,]  65   1      0          1        1   120
#> [303,]  68  18      1          0        1   160
#> [304,]  68   4      0          4        1   190
#> [305,]  71   3      0          5        0   112
#> [306,]  70   7      1          0        1   190
#> [307,]  68   7      0        150        0   210
#> [308,]  71  20      1          0        1   160
#> [309,]  67   2      0        180        0   128
#> [310,]  66   1      1          1        1   165
#> [311,]  70   4      1          0        1   180
#> [312,]  70  14      0        171        0   166
#> [313,]  66   4      0        180        0   130
#> [314,]  67  10      1          9        0   200
#> [315,]  67   6      1          4        0   130
#> [316,]  68  18      1         14        1   170
#> [317,]  65   2      0        180        0   130
#> [318,]  68   7      1          0        1   150
#> [319,]  67  14      1         13        0   130
#> [320,]  69   8      0        180        1   180
#> [321,]  71   6      0         45        1   158
#> [322,]  71   3      0        103        0   133
#> [323,]  69   3      0          3        1   130
#> [324,]  70  22      1         13        0   103
#> [325,]  67   5      0          5        0   130
#> [326,]  68   6      0        180        0   145
#> [327,]  69   8      1          5        1   195
#> [328,]  69   6      1          4        1   174
#> [329,]  72   3      1          0        1   132
#> [330,]  72   7      0          7        1   110
#> [331,]  69   8      1          7        1   108
#> [332,]  67   3      0        180        0   110
#> [333,]  69  19      0        180        0   130
#> [334,]  68  18      0         18        1   100
#> [335,]  67  14      0        172        1   140
#> [336,]  69  11      1          0        1   120
#> [337,]  69   4      1          3        0   132
#> [338,]  68   2      0          7        1   130
#> [339,]  69   8      1          2        0   121
#> [340,]  67  13      1          9        0   130
#> [341,]  70   3      0        123        0   130
#> [342,]  72   5      1          4        0   170
#> [343,]  68   3      0         19        0   135
#> [344,]  67  12      1          8        0   120
#> [345,]  69   1      0          1        1   110
#> [346,]  69   5      0         76        0   120
#> [347,]  72  13      1         11        1   195
#> [348,]  68  10      1          8        1   160
#> [349,]  70  35      1          0        1   105
#> [350,]  72  30      1          0        1   145
#> [351,]  70   7      0          7        0   102
#> [352,]  71   6      0          9        0   120
#> [353,]  70  11      0        180        1   210
#> [354,]  72  19      1          8        0   120
#> [355,]  72  12      1         10        0   170
#> [356,]  67   8      0        180        1   170
#> [357,]  67   5      1          0        1   147
#> [358,]  67   9      0        180        0   158
#> [359,]  73  13      0        152        1   130
#> [360,]  70   5      0        180        0   150
#> [361,]  72   2      0          2        1   100
#> [362,]  72   6      1          5        0   115
#> [363,]  68  23      0        180        1   220
#> [364,]  69   3      0        180        0   220
#> [365,]  71   3      1          2        0   150
#> [366,]  68   4      1          3        0   210
#> [367,]  72   5      0         28        0   120
#> [368,]  73   6      0        180        1   117
#> [369,]  69  16      1         10        1   140
#> [370,]  69   8      1          1        0   164
#> [371,]  68   7      0        180        1   130
#> [372,]  70   4      0        180        0   180
#> [373,]  69   1      1          0        0   155
#> [374,]  73   6      1          0        1   270
#> [375,]  71   2      1          0        1   180
#> [376,]  73   0      0        180        1   161
#> [377,]  74   8      1          0        1    85
#> [378,]  73   4      0        180        1   154
#> [379,]  69   2      1          0        1   110
#> [380,]  71   3      1          1        0   150
#> [381,]  71  15      1         11        0   165
#> [382,]  68   9      0        180        1   120
#> [383,]  71  20      1         10        0   140
#> [384,]  73   3      1          0        1   136
#> [385,]  70   5      1          0        1   190
#> [386,]  71  17      1         11        0   160
#> [387,]  73  10      1          8        0   106
#> [388,]  70  26      1         11        1   120
#> [389,]  73   4      0         58        1   160
#> [390,]  70   3      0        180        1   154
#> [391,]  73   6      0        180        0   110
#> [392,]  71   7      1          2        0   143
#> [393,]  72   8      1          0        1   140
#> [394,]  74   3      0          3        1   150
#> [395,]  73  17      1         11        0   140
#> [396,]  69   2      1          1        1    80
#> [397,]  70   4      1          0        1   140
#> [398,]  71  14      1         13        1   170
#> [399,]  74   7      1          0        1   117
#> [400,]  72  10      1          8        1   153
#> [401,]  69   7      0        180        1   144
#> [402,]  71  10      1          9        1   120
#> [403,]  75   1      0          1        0   133
#> [404,]  73  10      1          9        1   146
#> [405,]  72  10      1          9        1   160
#> [406,]  73  10      1         10        1   120
#> [407,]  71  11      1          8        0   110
#> [408,]  71   4      0          4        0   134
#> [409,]  72   1      1          1        0   168
#> [410,]  72   7      0         57        1   145
#> [411,]  70   3      0          3        0   150
#> [412,]  73   5      1          3        1   112
#> [413,]  76  25      1         12        1   170
#> [414,]  72   2      0        180        0   120
#> [415,]  72   4      1          0        1   197
#> [416,]  73   5      0        180        0   126
#> [417,]  73   4      0        180        0   124
#> [418,]  74  34      1          8        1   233
#> [419,]  76   3      1          0        1   120
#> [420,]  71  32      1         12        1   107
#> [421,]  72   5      0        180        0   154
#> [422,]  76   5      0          5        1   130
#> [423,]  77  11      0         11        1   150
#> [424,]  77   4      0          4        0   185
#> [425,]  75   3      1          1        0   180
#> [426,]  73  15      0         15        1   160
#> [427,]  71  16      0        180        0   140
#> [428,]  73  10      1         10        0   124
#> [429,]  74   7      0        180        1   150
#> [430,]  74   3      0          3        1   128
#> [431,]  74   2      1          1        0   140
#> [432,]  74  19      1          4        1   200
#> [433,]  73   6      0          6        1   114
#> [434,]  75  23      1         14        1   110
#> [435,]  72   4      1          3        0   160
#> [436,]  76  17      1          0        1   200
#> [437,]  73   4      1          3        1   125
#> [438,]  76  13      1         10        0   110
#> [439,]  75   4      1          0        1   122
#> [440,]  75   0      0          0        1   130
#> [441,]  74   8      1          0        1   105
#> [442,]  76  13      1          8        1   148
#> [443,]  74   6      0        180        0   160
#> [444,]  76   4      0          4        1   155
#> [445,]  75   1      0          1        1   125
#> [446,]  73   1      0         52        1   105
#> [447,]  73   0      0        180        0   156
#> [448,]  72   5      0        180        0   120
#> [449,]  78  12      1         11        1   160
#> [450,]  76  44      1         10        0   105
#> [451,]  76   5      0        180        0   185
#> [452,]  74  10      1          0        1   135
#> [453,]  74   8      1          8        1   170
#> [454,]  75   9      0        180        1   140
#> [455,]  77   5      1          0        0   123
#> [456,]  77  12      1          9        1   100
#> [457,]  77  12      0        180        0   130
#> [458,]  77   1      1          0        1    90
#> [459,]  76  12      1         11        1   120
#> [460,]  78   5      1          0        1   170
#> [461,]  73   7      1          0        0   174
#> [462,]  75   3      1          1        1   171
#> [463,]  74   9      1          8        0   200
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
#> [476,]  79   6      0        180        0   170
#> [477,]  80  10      1          6        1   147
#> [478,]  78   0      0        180        1   212
#> [479,]  78  13      1          5        0   130
#> [480,]  80   8      0          8        1   120
#> [481,]  75  13      1          6        0   150
#> [482,]  74  10      1          8        0   135
#> [483,]  76   1      0          1        1    83
#> [484,]  78  12      1          9        0   150
#> [485,]  75   4      1          0        0   212
#> [486,]  77   2      1          0        1   143
#> [487,]  78  10      0        180        1   130
#> [488,]  76  11      1          0        0   120
#> [489,]  75  11      1          4        0   162
#> [490,]  75   3      0          3        0     0
#> [491,]  76   7      0         29        1   150
#> [492,]  77  24      0         24        1   160
#> [493,]  79   8      0         32        1   120
#> [494,]  80   9      0         23        1   128
#> [495,]  76   3      1          0        1   140
#> [496,]  79  11      0        180        0   160
#> [497,]  79   2      1          0        1   121
#> [498,]  78  14      1          0        1   140
#> [499,]  81   1      0          1        0   130
#> [500,]  78  11      1          8        1   118
#> [501,]  76  10      1          8        0   180
#> [502,]  76  12      1         10        1   127
#> [503,]  77   6      0          6        1   107
#> [504,]  80   3      1          0        1   120
#> [505,]  78  11      0        180        1   135
#> [506,]  76   1      0          1        1   140
#> [507,]  76   1      0          1        1    90
#> [508,]  79   3      0          3        0   120
#> [509,]  77   7      0        180        1   170
#> [510,]  79   4      1          0        1   120
#> [511,]  81   1      0        180        0   120
#> [512,]  77   9      1          4        0   141
#> [513,]  80  40      1          0        1   138
#> [514,]  80  17      1         12        0   100
#> [515,]  79  10      0         10        1   120
#> [516,]  80  15      1          0        1    90
#> [517,]  81   4      1          2        1   126
#> [518,]  79  28      0        164        0   100
#> [519,]  80   9      0        118        1   186
#> [520,]  80   6      0        173        1   160
#> [521,]  79   1      0         37        1   140
#> [522,]  81   3      0        180        0   184
#> [523,]  81   2      0        175        0   172
#> [524,]  78   7      0          7        1   147
#> [525,]  77  13      1          0        1   190
#> [526,]  78  15      0         15        0   165
#> [527,]  80   5      1          1        1   108
#> [528,]  81   4      1          1        1   104
#> [529,]  78   3      1          1        1   152
#> [530,]  77  10      1          8        1   130
#> [531,]  79   6      0          6        0   152
#> [532,]  80   6      1          0        1   119
#> [533,]  80   5      0          5        1   130
#> [534,]  82   1      1          0        1    82
#> [535,]  79  10      0        180        1   150
#> [536,]  79   1      0        125        0   193
#> [537,]  82  21      1          2        0   155
#> [538,]  84  22      1         10        0   180
#> [539,]  80   6      0          6        1   110
#> [540,]  83   9      1          5        1   170
#> [541,]  82   5      0        180        0   110
#> [542,]  79   7      1          6        0   130
#> [543,]  81  11      1          8        0   160
#> [544,]  81   5      0        177        0    41
#> [545,]  80  11      1          8        0   170
#> [546,]  78  23      1         10        1   145
#> [547,]  79   4      0          4        1   183
#> [548,]  82   8      1          1        0   128
#> [549,]  81  15      0        180        1   140
#> [550,]  84   5      1          1        1    85
#> [551,]  83   8      0          8        0   115
#> [552,]  81  16      0         16        1   110
#> [553,]  80   6      1          0        1   150
#> [554,]  80  11      1          8        0   110
#> [555,]  80   8      1          7        0   160
#> [556,]  79   0      1          0        1    96
#> [557,]  83   2      0          2        1   155
#> [558,]  82   6      0        128        1   100
#> [559,]  84   5      0        180        1   203
#> [560,]  81   1      0          1        1   150
#> [561,]  84   1      0         38        1   205
#> [562,]  83   3      0        180        0   174
#> [563,]  81   4      0         90        1   138
#> [564,]  85   3      1          2        1   160
#> [565,]  80  13      1          8        1   140
#> [566,]  79   4      0          4        1    60
#> [567,]  80   6      0         71        1   189
#> [568,]  82  19      0         19        0   120
#> [569,]  80  30      1         13        0   220
#> [570,]  83   9      0        180        0   198
#> [571,]  83   3      0        114        0    98
#> [572,]  82   0      0          2        1   100
#> [573,]  85   9      1          6        1   160
#> [574,]  83   1      0        180        0   160
#> [575,]  81   1      0          1        1   145
#> [576,]  81  12      0         12        1   163
#> [577,]  82  16      1          8        0   103
#> [578,]  81   4      0          4        0   160
#> [579,]  86  12      0        180        1   120
#> [580,]  83  12      1          2        1   170
#> [581,]  81  19      1         14        0   120
#> [582,]  82   3      1          2        0   130
#> [583,]  82  15      1          0        0   183
#> [584,]  80   2      0         88        0   135
#> [585,]  86   8      0          8        1   132
#> [586,]  84   6      0        165        0   145
#> [587,]  86   3      0          3        1   140
#> [588,]  82   9      0        180        1   134
#> [589,]  84   3      0        180        1   120
#> [590,]  85   3      0          3        1   118
#> [591,]  81   2      1          0        1   118
#> [592,]  82   1      0        180        1   193
#> [593,]  83   4      0          4        0   130
#> [594,]  87   2      0          5        1   137
#> [595,]  86  12      1          0        1   132
#> [596,]  82  14      1         11        1   103
#> [597,]  86   6      1          0        1   140
#> [598,]  84  16      0         70        1   150
#> [599,]  83  10      1          0        1   190
#> [600,]  86   2      0        180        1   169
#> [601,]  88  14      1          3        1   130
#> [602,]  84   3      0          3        1   121
#> [603,]  84   7      1          2        0   148
#> [604,]  87   2      0        180        0   113
#> [605,]  84   9      0         92        1   110
#> [606,]  84   3      0        180        1   170
#> [607,]  86   4      0         38        1   122
#> [608,]  82   4      0          4        0   130
#> [609,]  86  13      0        177        0   163
#> [610,]  85   3      0          3        1   113
#> [611,]  86   6      0          6        1   117
#> [612,]  84  13      0         62        1   100
#> [613,]  86   6      1          1        0   112
#> [614,]  88   4      0          4        0   100
#> [615,]  83  20      1          3        1   150
#> [616,]  85  22      0         22        1   184
#> [617,]  83   9      0         65        1   150
#> [618,]  86   9      1          7        1   142
#> [619,]  87   2      0        180        1   130
#> [620,]  86   6      0         46        0   173
#> [621,]  88   2      0        180        1    68
#> [622,]  83   3      0          3        1   130
#> [623,]  87   8      0          8        1   157
#> [624,]  86  15      1          8        1   109
#> [625,]  89   4      0          4        1   153
#> [626,]  89   5      0        119        1   140
#> [627,]  87   1      0          1        0   170
#> [628,]  84   8      0        180        1   119
#> [629,]  85   8      0          8        1   136
#> [630,]  84   2      0        110        1   174
#> [631,]  87  15      1          9        1   138
#> [632,]  84   0      0        180        1   136
#> [633,]  90  14      0         14        1   100
#> [634,]  88   1      0          1        0   135
#> [635,]  86   4      0        180        1   145
#> [636,]  91   8      0          8        0   100
#> [637,]  86   3      1          0        1    80
#> [638,]  88   8      0         50        1   154
#> [639,]  90  11      1         10        1   186
#> [640,]  87   6      0        126        1   168
#> [641,]  86   9      1          7        0   130
#> [642,]  90   4      1          0        0   121
#> [643,]  91   1      0          1        1    74
#> [644,]  87  43      0        178        1   130
#> [645,]  87   5      0         36        1   150
#> [646,]  88   3      1          2        0   159
#> [647,]  89   3      1          1        1   160
#> [648,]  92   1      0          1        1   167
#> [649,]  91   3      0         33        1   137
#> [650,]  89   2      0        168        0   118
#> [651,]  91   5      0        169        1   176
#> [652,]  89  52      0         52        1   130
#> [653,]  92   7      0          7        1   110
#> [654,]  91   4      1          0        1   120
#> [655,]  90  19      1         11        1   129
#> [656,]  94   6      0         50        0    78
#> [657,]  90   1      0          1        1   118
#> [658,]  91   2      0          2        1   116
#> [659,]  93   8      0        179        1   110
#> [660,]  94   8      0          8        1   142
#> [661,]  92   4      0         76        1   149
#> [662,]  91   1      0        180        0   158
#> [663,]  96   3      0         12        1    97
#> [664,]  94   3      0         26        1   144
#> [665,]  91  12      0         53        1   212
#> [666,]  93   0      1          0        1   122
#> [667,]  92   5      0         69        0   139
#> [668,]  92   2      0          2        0   112
#> [669,]  93   4      0        180        1   135
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+  12.0 
#>  [11]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+
#>  [21] 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 161.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61]  10.0+ 180.0+   7.0    2.0    1.0  180.0+ 179.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0 
#>  [81] 180.0+ 180.0+ 180.0+  77.0  180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [91]   4.0+  85.0  166.0+ 180.0+  16.0+   7.0+   6.0+ 180.0+ 180.0+  13.0+
#> [101] 171.0+ 180.0+   1.0    9.0+ 180.0+ 180.0+ 175.0+ 180.0+   2.0  180.0+
#> [111]   7.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0   15.0+ 180.0+
#> [121] 180.0+ 180.0+ 134.0+ 180.0+   2.0    3.0+ 180.0+ 180.0+ 180.0+   1.0 
#> [131] 165.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [141] 180.0+  15.0  147.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+   2.0+ 180.0+
#> [151] 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161] 161.0+ 180.0+ 180.0+   3.0   10.0+ 180.0+  45.0    3.0+ 180.0+ 180.0+
#> [171] 172.0+   8.0  180.0+   1.0+ 180.0+ 180.0+ 180.0+  77.0   13.0+   8.0+
#> [181] 180.0+ 180.0+  94.0  180.0+   7.0    7.0+   6.0  180.0+ 180.0+ 180.0+
#> [191] 180.0+   3.0+ 180.0+ 180.0+  13.0+   5.0+ 180.0+   1.0  180.0+ 180.0+
#> [201] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+  22.0  180.0+
#> [211]   7.0+ 180.0+ 180.0+   3.0+   6.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+
#> [221] 180.0+  14.0+ 180.0+   3.0+  88.0  180.0+  12.0  180.0+ 180.0+   0.5 
#> [231] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+  18.0+
#> [241] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0  180.0+ 180.0+
#> [251]   5.0+  13.0  179.0+   3.0  180.0+   3.0+ 180.0+ 180.0+   7.0+   8.0 
#> [261]   5.0   16.0  180.0+ 180.0+ 180.0+ 180.0+ 123.0+  11.0+ 180.0+  79.0 
#> [271]  80.0   15.0+ 180.0+ 180.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+
#> [281] 180.0+   8.0+   3.0  175.0  180.0+  10.0  180.0+ 180.0+ 180.0+ 180.0+
#> [291] 180.0+  11.0+ 180.0+   0.5   18.0    7.0+ 180.0+ 180.0+ 180.0+  93.0 
#> [301]  21.0+   1.0   18.0+   4.0    5.0    7.0+ 150.0  180.0+ 180.0+   1.0 
#> [311] 180.0+ 171.0  180.0+ 174.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [321]  45.0  103.0    3.0+ 180.0+   5.0+ 180.0+ 180.0+  97.0  180.0+   7.0 
#> [331]   8.0+ 180.0+ 180.0+  18.0  172.0+ 180.0+ 180.0+   7.0    8.0+  13.0+
#> [341] 123.0  180.0+  19.0  180.0+   1.0   76.0  132.0   10.0+ 180.0+ 162.0 
#> [351]   7.0+   9.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 152.0  180.0+
#> [361]   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+  16.0+ 180.0+
#> [371] 180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+
#> [381] 180.0+ 180.0+  20.0  180.0+ 180.0+ 180.0+  87.0  180.0+  58.0  180.0+
#> [391] 180.0+ 180.0+ 180.0+   3.0  180.0+   2.0  180.0+  14.0+ 180.0+  10.0+
#> [401] 180.0+ 179.0+   1.0  180.0+ 159.0   15.0  180.0+   4.0+   1.0   57.0 
#> [411]   3.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+ 177.0+
#> [421] 180.0+   5.0   11.0+   4.0+ 180.0+  15.0+ 180.0+  10.0  180.0+   3.0 
#> [431] 180.0+ 180.0+   6.0  180.0+ 180.0+  17.0+ 180.0+ 174.0+   4.0    0.5 
#> [441] 180.0+ 180.0+ 180.0+   4.0    1.0   52.0  180.0+ 180.0+  12.0  180.0+
#> [451] 180.0+ 180.0+   8.0  180.0+   5.0  180.0+ 180.0+   1.0   12.0  180.0+
#> [461]   7.0+   3.0  168.0+ 180.0+ 176.0+  18.0  180.0+ 180.0+  11.0    7.0 
#> [471] 180.0+   8.0+   7.0  180.0+  32.0  180.0+  10.0  180.0+ 172.0    8.0 
#> [481] 180.0+ 180.0+   1.0  180.0+   4.0+   2.0  180.0+  11.0  152.0+   3.0 
#> [491]  29.0   24.0   32.0   23.0    3.0+ 180.0+ 180.0+ 180.0+   1.0   11.0 
#> [501]  10.0+ 180.0+   6.0    3.0+ 180.0+   1.0    1.0    3.0  180.0+ 138.0 
#> [511] 180.0+  71.0   40.0   17.0   10.0+ 180.0+  93.0  164.0  118.0  173.0 
#> [521]  37.0  180.0+ 175.0+   7.0+  22.0   15.0+   5.0+  71.0    3.0+  10.0 
#> [531]   6.0+   6.0    5.0    1.0  180.0+ 125.0  180.0+ 180.0+   6.0    9.0+
#> [541] 180.0+ 180.0+ 180.0+ 177.0+ 169.0   70.0    4.0  180.0+ 180.0+ 180.0+
#> [551]   8.0+  16.0  180.0+ 180.0+ 180.0+   0.5    2.0  128.0  180.0+   1.0 
#> [561]  38.0  180.0+  90.0  180.0+ 180.0+   4.0   71.0   19.0   30.0  180.0+
#> [571] 114.0    2.0  180.0+ 180.0+   1.0   12.0   16.0+   4.0+ 180.0+  77.0 
#> [581] 180.0+   3.0   83.0   88.0    8.0  165.0    3.0  180.0+ 180.0+   3.0+
#> [591] 180.0+ 180.0+   4.0+   5.0  180.0+ 174.0    6.0   70.0  180.0+ 180.0+
#> [601]  14.0    3.0  180.0+ 180.0+  92.0  180.0+  38.0    4.0  177.0    3.0+
#> [611]   6.0+  62.0    6.0+   4.0+  20.0   22.0   65.0   11.0  180.0+  46.0 
#> [621] 180.0+   3.0+   8.0+ 180.0+   4.0  119.0    1.0+ 180.0+   8.0  110.0 
#> [631] 180.0+ 180.0+  14.0    1.0+ 180.0+   8.0    3.0   50.0   11.0  126.0 
#> [641] 180.0+   4.0    1.0  178.0+  36.0   75.0    3.0+   1.0   33.0  168.0 
#> [651] 169.0   52.0    7.0    4.0  180.0+  50.0    1.0+   2.0  179.0+   8.0+
#> [661]  76.0  180.0+  12.0   26.0   53.0    0.5   69.0    2.0  180.0+   3.0 
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
#>   0.8378131 
```
