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
#> min 0.00332    44   2.795 0.1226       6
#> 1se 0.06514    12   2.912 0.1171       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
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
#>  [13,]  33   6      1          1        1   115
#>  [14,]  38  16      1         10        0   160
#>  [15,]  38  12      1         11        1    92
#>  [16,]  40  12      1          9        0   153
#>  [17,]  42   3      1          1        1   130
#>  [18,]  38   5      1          3        0   125
#>  [19,]  42   2      0          2        0   140
#>  [20,]  40   6      0        180        1   138
#>  [21,]  43   3      1          0        1   100
#>  [22,]  40   1      1          0        1   145
#>  [23,]  42   4      0        180        0   162
#>  [24,]  42  12      1         10        1   170
#>  [25,]  43   2      1          1        1   116
#>  [26,]  42   2      0        180        1   124
#>  [27,]  44   5      1          1        0   170
#>  [28,]  45   3      0        180        1   154
#>  [29,]  44   3      0        180        0   141
#>  [30,]  41  13      1          1        0   140
#>  [31,]  45   9      1          7        0   110
#>  [32,]  45   6      0        180        1   170
#>  [33,]  41   5      1          4        1   141
#>  [34,]  44   2      1          1        1   150
#>  [35,]  43   2      0        180        1   140
#>  [36,]  46  15      0        180        0   120
#>  [37,]  46   2      1          1        0   126
#>  [38,]  47   4      1          3        0   118
#>  [39,]  48  15      0        180        1   160
#>  [40,]  45   3      0        150        0   130
#>  [41,]  44   3      1          0        1   180
#>  [42,]  46   7      1          2        0   166
#>  [43,]  43  10      0        180        0   185
#>  [44,]  46  13      1         10        0   100
#>  [45,]  44   0      1          0        1    96
#>  [46,]  47   4      1          3        1   160
#>  [47,]  43   3      1          0        1   124
#>  [48,]  49   5      0         73        1   136
#>  [49,]  45   5      0          5        0   141
#>  [50,]  46   2      1          1        1   122
#>  [51,]  46   6      1          0        1   100
#>  [52,]  44   4      1          0        1   114
#>  [53,]  47   2      0        180        0   108
#>  [54,]  44   9      1          8        1   135
#>  [55,]  46   5      1          3        0   130
#>  [56,]  46  15      0        180        1   120
#>  [57,]  45   9      1          0        1   145
#>  [58,]  48   3      0        180        0   154
#>  [59,]  48  12      1         11        0   200
#>  [60,]  47   9      1          6        0   170
#>  [61,]  49   4      0        180        0   117
#>  [62,]  47  10      0         10        1   140
#>  [63,]  48   2      1          0        0   184
#>  [64,]  50   4      1          1        0   125
#>  [65,]  49   7      1          7        1   110
#>  [66,]  46   9      1          9        1   122
#>  [67,]  49   2      0          2        0   105
#>  [68,]  51   1      0          1        1   145
#>  [69,]  49  15      1         11        1   160
#>  [70,]  47   2      0        180        0   150
#>  [71,]  46   6      1          0        1   156
#>  [72,]  52   2      0        180        1   170
#>  [73,]  50   7      1          0        1    92
#>  [74,]  51   3      1          2        0   113
#>  [75,]  50   1      1          0        0   150
#>  [76,]  50   9      0        180        0   130
#>  [77,]  49   7      1          4        1    90
#>  [78,]  47   8      0        180        0   160
#>  [79,]  46   1      1          1        0   145
#>  [80,]  50   4      1          1        0   150
#>  [81,]  48  17      1         10        0   111
#>  [82,]  47   2      1          1        0   110
#>  [83,]  52   4      1          4        0   152
#>  [84,]  49  15      0        180        1   160
#>  [85,]  54  17      1         12        1   102
#>  [86,]  54   6      1          3        0   129
#>  [87,]  51   3      1          1        0   140
#>  [88,]  50   2      0          5        1   106
#>  [89,]  50  10      1          6        0   122
#>  [90,]  50  14      1         13        0   170
#>  [91,]  53   8      1          7        0   160
#>  [92,]  48   3      1          2        0   150
#>  [93,]  53   4      0          4        0   140
#>  [94,]  48   6      0        180        0   160
#>  [95,]  53   4      1          0        1   156
#>  [96,]  51  13      0         99        1   160
#>  [97,]  54   9      1          0        1   138
#>  [98,]  49  16      0         16        0   125
#>  [99,]  55   3      1          1        0   150
#> [100,]  52   7      1          2        0   154
#> [101,]  54   9      1          1        0   130
#> [102,]  55   4      1          2        0   150
#> [103,]  52   4      0        180        1   180
#> [104,]  51  13      1         11        0   145
#> [105,]  50   5      1          4        1   150
#> [106,]  52   4      0        180        0   183
#> [107,]  50   3      0        174        1   153
#> [108,]  55  28      1         13        1   160
#> [109,]  49   6      1          0        1   130
#> [110,]  49   1      0          1        1   110
#> [111,]  50   7      1          1        0   156
#> [112,]  50   7      1          0        1   127
#> [113,]  56   4      1          1        1   130
#> [114,]  55   1      0        180        0   127
#> [115,]  54   1      0        180        0   162
#> [116,]  54   7      1          0        1   100
#> [117,]  56   3      0        180        1   193
#> [118,]  56   2      0        180        0   132
#> [119,]  55   5      1          4        1   120
#> [120,]  52   8      0        180        0   119
#> [121,]  54   3      0        180        1   180
#> [122,]  55   6      0        180        0   170
#> [123,]  52  16      0         16        0   152
#> [124,]  52  16      1         14        0   170
#> [125,]  53  15      0         15        1    90
#> [126,]  55   6      0        180        1   100
#> [127,]  54  12      1          0        1   190
#> [128,]  56   3      0          8        1   139
#> [129,]  55   1      0          2        0   130
#> [130,]  57   3      0          3        0   120
#> [131,]  54   2      1          1        0   135
#> [132,]  57   5      1          3        1   138
#> [133,]  57   1      0          1        1   100
#> [134,]  56   4      1          0        1   140
#> [135,]  52   2      0        180        0   140
#> [136,]  52  15      1         14        0   130
#> [137,]  53   3      1          0        1   200
#> [138,]  57  10      0        180        1   170
#> [139,]  58   8      0          8        1   130
#> [140,]  54   5      0        180        1   108
#> [141,]  55   3      1          1        1   156
#> [142,]  53  21      1         13        1   130
#> [143,]  59   3      1          1        0   172
#> [144,]  58   6      1          0        1    90
#> [145,]  55   9      1          2        1   147
#> [146,]  55  13      0        166        1   140
#> [147,]  57   4      1          2        1   185
#> [148,]  53   7      1          0        1   120
#> [149,]  57  11      1         10        1   129
#> [150,]  55   3      1          2        0   140
#> [151,]  54   7      1          0        1   141
#> [152,]  56   4      0          4        0   164
#> [153,]  56   7      1          5        1   120
#> [154,]  55   2      0          2        0   106
#> [155,]  59   9      1          1        1   125
#> [156,]  60  11      1          9        0   106
#> [157,]  59   3      0        180        0   120
#> [158,]  60   5      1          1        0   138
#> [159,]  57   5      0        180        1   130
#> [160,]  58  11      1          9        1   124
#> [161,]  55   5      1          0        1   160
#> [162,]  57  10      1          9        0   103
#> [163,]  59   6      1          0        1   140
#> [164,]  59   5      0        180        1   155
#> [165,]  59   4      1          0        1   152
#> [166,]  58  26      1          0        1   189
#> [167,]  61   9      0          9        1   160
#> [168,]  58   8      0        161        1   140
#> [169,]  61   4      1          3        0   151
#> [170,]  61   9      1          8        0   150
#> [171,]  58   1      0          1        1   100
#> [172,]  57  13      1         10        0   110
#> [173,]  58  10      0         10        1   150
#> [174,]  57  11      0        180        1   150
#> [175,]  61   3      0         17        0   143
#> [176,]  56  14      0         45        0   130
#> [177,]  58  19      1         13        1   140
#> [178,]  56  13      1          6        1   158
#> [179,]  56  18      1         11        1   165
#> [180,]  58  11      0        172        1   135
#> [181,]  60  12      1          0        1   114
#> [182,]  55   9      1          7        1   135
#> [183,]  61   4      1          0        1   115
#> [184,]  56   8      1          8        0   120
#> [185,]  61  13      1         12        1   130
#> [186,]  57   1      0          1        0   126
#> [187,]  59   5      1          2        0   182
#> [188,]  58   5      1          1        1   135
#> [189,]  59  10      0        180        0   160
#> [190,]  58   8      1          5        0   152
#> [191,]  62   7      1          2        1   180
#> [192,]  57   3      1          0        0   100
#> [193,]  58   8      1          3        1   150
#> [194,]  57   7      0        169        0   180
#> [195,]  61   7      0          7        1   150
#> [196,]  60   7      0          7        0   147
#> [197,]  61   6      0          6        0   134
#> [198,]  57  12      1          9        1   120
#> [199,]  62   4      1          0        0   160
#> [200,]  58   3      1          0        1   146
#> [201,]  62   4      1          3        0   173
#> [202,]  58   2      0         30        0   202
#> [203,]  59   1      0        180        0   155
#> [204,]  59  16      1          9        1   133
#> [205,]  63   6      0         28        1   120
#> [206,]  61   5      0          5        1   110
#> [207,]  57  18      1          9        1    93
#> [208,]  61   5      0          5        1   160
#> [209,]  58  11      1          9        0   179
#> [210,]  63   3      1          1        0   180
#> [211,]  63   1      0        180        1   130
#> [212,]  63   4      1          3        0   222
#> [213,]  62   3      0        180        1   105
#> [214,]  63   4      0        180        1   190
#> [215,]  63  15      1         10        1   126
#> [216,]  64   4      0        180        0   130
#> [217,]  63   4      1          1        0   155
#> [218,]  60  18      1         13        0   132
#> [219,]  62   7      0          7        0   150
#> [220,]  59   1      0         22        1   162
#> [221,]  58   2      0        180        0   127
#> [222,]  59   4      0        180        0   196
#> [223,]  60   7      1          5        1   141
#> [224,]  59   5      1          1        0   148
#> [225,]  60   7      1          1        1    90
#> [226,]  63   1      0          1        0   130
#> [227,]  61  15      1         13        0   170
#> [228,]  60   3      0          3        0   168
#> [229,]  64  10      1          9        0   160
#> [230,]  62   6      0          6        0   120
#> [231,]  63  12      1         10        0   200
#> [232,]  59  10      0        180        1   130
#> [233,]  60   8      0         17        1   130
#> [234,]  61   6      1          1        1   117
#> [235,]  63  10      1          0        1   148
#> [236,]  65  36      1         11        0   140
#> [237,]  63   4      1          3        0   162
#> [238,]  66   3      1          1        0   127
#> [239,]  63   7      0        180        0   120
#> [240,]  66   5      1          0        1   110
#> [241,]  65  10      1          8        1   120
#> [242,]  64   0      0          0        1    90
#> [243,]  65   3      0        180        1   190
#> [244,]  64   7      0        180        1   120
#> [245,]  66   6      1          1        1   130
#> [246,]  63  12      0         12        1   150
#> [247,]  62   3      1          1        1   199
#> [248,]  65   3      1          0        1    80
#> [249,]  63   5      1          4        0   170
#> [250,]  63   2      1          1        0   180
#> [251,]  62  13      1         11        0   180
#> [252,]  67  11      0         11        1   100
#> [253,]  64   2      0          2        0   201
#> [254,]  66  18      1          5        0   142
#> [255,]  63   9      1          8        1   160
#> [256,]  63   3      1          2        0   120
#> [257,]  63   2      1          0        0   140
#> [258,]  64  19      1          8        1   160
#> [259,]  65   8      1          0        1   140
#> [260,]  67   6      0        180        1   170
#> [261,]  64   6      1          0        1   125
#> [262,]  66   7      1          0        1   115
#> [263,]  66  13      1          0        0   118
#> [264,]  64  14      1         13        1   150
#> [265,]  65   3      0          3        0   105
#> [266,]  64   0      0          0        1   148
#> [267,]  67   4      1          3        0   130
#> [268,]  66   6      1          0        1   140
#> [269,]  65   2      1          1        1   170
#> [270,]  64  10      1          9        1   110
#> [271,]  63   7      1          0        0   162
#> [272,]  67   8      1          1        1   130
#> [273,]  68   5      0          5        1    90
#> [274,]  63  10      0         16        1   160
#> [275,]  68  18      0        180        1   260
#> [276,]  65  17      1         14        1   100
#> [277,]  65  18      1          3        0   120
#> [278,]  63  10      0         18        1   130
#> [279,]  66  12      1         10        1   150
#> [280,]  65  15      1         12        1   150
#> [281,]  66  11      1          0        0   100
#> [282,]  65   4      1          2        1   145
#> [283,]  69  12      0         15        1   140
#> [284,]  66  15      1         13        1   160
#> [285,]  63   2      0        180        0   150
#> [286,]  65  11      1          6        0   130
#> [287,]  69  21      1         10        0   180
#> [288,]  66   9      1          8        0   130
#> [289,]  63   8      0        180        1   120
#> [290,]  65   8      1          0        1    90
#> [291,]  66   3      0          3        1   138
#> [292,]  69   1      1          0        0   170
#> [293,]  67   1      0        180        1   160
#> [294,]  68  10      1         10        1   150
#> [295,]  65   1      1          0        0   133
#> [296,]  65   6      0          6        0    80
#> [297,]  65  10      1          1        1   148
#> [298,]  66  19      1         12        1   150
#> [299,]  67  12      1         12        0   160
#> [300,]  69   6      0         99        1   140
#> [301,]  66   4      0        180        1   130
#> [302,]  70  15      1         12        1   132
#> [303,]  64   0      1          0        1   118
#> [304,]  66   4      0        180        0   177
#> [305,]  68   4      1          0        1   160
#> [306,]  69   4      1          3        1   150
#> [307,]  64  21      0         21        1   155
#> [308,]  66   6      0        180        0   140
#> [309,]  65   1      0          1        1   120
#> [310,]  68  18      1          0        1   160
#> [311,]  65   6      0        101        1   115
#> [312,]  68   4      0          4        1   190
#> [313,]  71   3      0          5        0   112
#> [314,]  68   7      0        150        0   210
#> [315,]  71  20      1          0        1   160
#> [316,]  67   2      0        180        0   128
#> [317,]  69   8      0        180        1   153
#> [318,]  70  14      0        171        0   166
#> [319,]  67   6      1          4        0   130
#> [320,]  65   2      0        180        0   130
#> [321,]  68   7      1          0        1   150
#> [322,]  69   3      1          2        0   151
#> [323,]  69   8      0        180        1   180
#> [324,]  71   6      0         45        1   158
#> [325,]  69   5      0          5        1   142
#> [326,]  67   1      0         36        1   104
#> [327,]  68   6      0        180        0   145
#> [328,]  69   8      1          5        1   195
#> [329,]  72   3      1          0        1   132
#> [330,]  72   7      0          7        1   110
#> [331,]  69   8      1          7        1   108
#> [332,]  67   3      0        180        0   110
#> [333,]  66   2      1          1        0   123
#> [334,]  69  19      0        180        0   130
#> [335,]  68  18      0         18        1   100
#> [336,]  67  14      0        172        1   140
#> [337,]  69  11      1          0        1   120
#> [338,]  66   2      0        180        0   130
#> [339,]  67   7      1          4        0   122
#> [340,]  69   8      1          2        0   121
#> [341,]  70   3      0        123        0   130
#> [342,]  70   9      0        180        1   142
#> [343,]  72   5      1          4        0   170
#> [344,]  68   3      0         19        0   135
#> [345,]  69   1      0          1        1   110
#> [346,]  67   1      0          1        1    60
#> [347,]  67   4      0         60        1   136
#> [348,]  69   5      0         76        0   120
#> [349,]  67   8      1          0        1   130
#> [350,]  72  13      1         11        1   195
#> [351,]  72  30      1          0        1   145
#> [352,]  70   7      0          7        0   102
#> [353,]  68   7      1          2        0   135
#> [354,]  71   6      0          9        0   120
#> [355,]  69  10      1          6        1   120
#> [356,]  70  11      0        180        1   210
#> [357,]  72  19      1          8        0   120
#> [358,]  67   8      0        180        1   170
#> [359,]  67   9      0        180        0   158
#> [360,]  67   4      1          1        0   134
#> [361,]  72   6      1          5        0   115
#> [362,]  68  23      0        180        1   220
#> [363,]  69   3      0        180        0   220
#> [364,]  68   4      1          3        0   210
#> [365,]  72   5      0         28        0   120
#> [366,]  69  16      1         10        1   140
#> [367,]  69   8      1          1        0   164
#> [368,]  68   7      0        180        1   130
#> [369,]  70   4      0        180        0   180
#> [370,]  69   1      1          0        0   155
#> [371,]  71   2      1          0        1   180
#> [372,]  73   7      0          7        1   140
#> [373,]  68  15      1         13        1   130
#> [374,]  70   3      0          3        1   159
#> [375,]  70  13      1          9        0   100
#> [376,]  72   6      0        180        1   130
#> [377,]  73   0      0        180        1   161
#> [378,]  74   8      1          0        1    85
#> [379,]  73   4      0        180        1   154
#> [380,]  69   2      1          0        1   110
#> [381,]  71   3      1          1        0   150
#> [382,]  71  15      1         11        0   165
#> [383,]  74  20      0         20        1   180
#> [384,]  68   9      0        180        1   120
#> [385,]  71  20      1         10        0   140
#> [386,]  74   0      1          0        1    90
#> [387,]  73   3      1          0        1   136
#> [388,]  70   5      1          0        1   190
#> [389,]  71   8      1          7        0   149
#> [390,]  69  12      1          1        1   149
#> [391,]  74   4      0          4        0   120
#> [392,]  72   5      1          3        1   160
#> [393,]  70   3      0        180        1   154
#> [394,]  73   6      0        180        0   110
#> [395,]  72  15      1          0        1   150
#> [396,]  71   7      1          2        0   143
#> [397,]  72   8      1          0        1   140
#> [398,]  71  13      1          8        0   121
#> [399,]  69   2      1          1        1    80
#> [400,]  70   4      1          0        1   140
#> [401,]  74   7      1          0        1   117
#> [402,]  71  10      1          9        1   120
#> [403,]  75   1      0          1        0   133
#> [404,]  75   2      1          1        0   145
#> [405,]  73  10      1          9        1   146
#> [406,]  72  10      1          9        1   160
#> [407,]  73  10      1         10        1   120
#> [408,]  74  15      1          9        1   179
#> [409,]  73   1      0          1        1    80
#> [410,]  75   9      1          7        0   140
#> [411,]  75  13      1          1        1   130
#> [412,]  72  15      1         12        1   120
#> [413,]  73  10      1          8        0   120
#> [414,]  70   7      1          4        0   184
#> [415,]  72   1      1          1        0   168
#> [416,]  72   7      0         57        1   145
#> [417,]  72  11      0         11        1   140
#> [418,]  70   3      0          3        0   150
#> [419,]  72   2      0        180        0   120
#> [420,]  75   1      0        180        1   140
#> [421,]  72   4      1          0        1   197
#> [422,]  73   5      0        180        0   126
#> [423,]  72   5      0        180        0   154
#> [424,]  72   3      0        180        0   160
#> [425,]  76   5      0          5        1   130
#> [426,]  75   3      1          1        0   180
#> [427,]  73  15      0         15        1   160
#> [428,]  71  16      0        180        0   140
#> [429,]  74   7      0        180        1   150
#> [430,]  74   3      0          3        1   128
#> [431,]  76   1      0        180        0   114
#> [432,]  74   2      1          1        0   140
#> [433,]  74  19      1          4        1   200
#> [434,]  73   6      0          6        1   114
#> [435,]  75  23      1         14        1   110
#> [436,]  72   4      0         85        1   120
#> [437,]  72   4      1          3        0   160
#> [438,]  76  17      1          0        1   200
#> [439,]  73   4      1          3        1   125
#> [440,]  76  13      1         10        0   110
#> [441,]  75   4      1          0        1   122
#> [442,]  73  13      1         11        0   195
#> [443,]  75  12      0         12        1   160
#> [444,]  74   8      1          0        1   105
#> [445,]  76  13      1          8        1   148
#> [446,]  75   4      1          2        1   188
#> [447,]  74   6      0        180        0   160
#> [448,]  76   4      0          4        1   155
#> [449,]  74   2      0        180        0   111
#> [450,]  73   1      0         52        1   105
#> [451,]  73   0      0        180        0   156
#> [452,]  78  12      1         11        1   160
#> [453,]  76  44      1         10        0   105
#> [454,]  76   5      0        180        0   185
#> [455,]  74  10      1          0        1   135
#> [456,]  73  33      1         12        1   175
#> [457,]  77  12      0        180        0   130
#> [458,]  77   1      1          0        1    90
#> [459,]  73   7      1          0        0   174
#> [460,]  74   6      0         79        1   140
#> [461,]  75   3      1          1        1   171
#> [462,]  75   6      0        180        0   150
#> [463,]  74   2      1          0        1   130
#> [464,]  76  29      0         47        0    90
#> [465,]  73   8      1          1        1   162
#> [466,]  74   2      0        180        0   100
#> [467,]  74  15      0        180        1   172
#> [468,]  78   8      1          6        1   110
#> [469,]  74   7      0          7        0   161
#> [470,]  76  13      1          1        1   170
#> [471,]  78   0      0        180        1   212
#> [472,]  78  13      1          5        0   130
#> [473,]  75   5      0        119        1   150
#> [474,]  78  15      0        180        1   270
#> [475,]  80   8      0          8        1   120
#> [476,]  75  13      1          6        0   150
#> [477,]  74  10      1          8        0   135
#> [478,]  76   1      0          1        1    83
#> [479,]  79   4      0         80        0   145
#> [480,]  78   2      1          1        0   130
#> [481,]  75   4      1          0        0   212
#> [482,]  75  11      1          4        0   162
#> [483,]  75   3      0          3        0     0
#> [484,]  76   7      0         29        1   150
#> [485,]  77  24      0         24        1   160
#> [486,]  79   8      0         32        1   120
#> [487,]  80   6      0          6        1   150
#> [488,]  76   3      1          0        1   140
#> [489,]  78  11      1          1        1   140
#> [490,]  79  11      0        180        0   160
#> [491,]  78  14      1          0        1   140
#> [492,]  81   1      0          1        0   130
#> [493,]  78  11      1          8        1   118
#> [494,]  76   4      0          4        1   160
#> [495,]  79   4      0          4        1   125
#> [496,]  76  12      1         10        1   127
#> [497,]  77   6      0          6        1   107
#> [498,]  80   3      1          0        1   120
#> [499,]  75   2      1          1        1   204
#> [500,]  78  11      0        180        1   135
#> [501,]  76   1      0          1        1   140
#> [502,]  76   1      0          1        1    90
#> [503,]  77   7      0        180        1   170
#> [504,]  79   4      1          0        1   120
#> [505,]  81   1      0        180        0   120
#> [506,]  82   5      0          8        1   120
#> [507,]  80  40      1          0        1   138
#> [508,]  78   4      0         59        1   112
#> [509,]  80  17      1         12        0   100
#> [510,]  79  10      0         10        1   120
#> [511,]  81   4      1          2        1   126
#> [512,]  80   9      0        118        1   186
#> [513,]  80   6      0        173        1   160
#> [514,]  78  32      0        180        1   130
#> [515,]  79   1      0         37        1   140
#> [516,]  81   3      0        180        0   184
#> [517,]  81   2      0        175        0   172
#> [518,]  78   7      0          7        1   147
#> [519,]  77  13      1          0        1   190
#> [520,]  80   5      1          1        1   108
#> [521,]  78  26      1          5        0   194
#> [522,]  76   1      0        166        0   131
#> [523,]  78   3      1          1        1   152
#> [524,]  77  10      1          8        1   130
#> [525,]  82   3      1          1        1   144
#> [526,]  80   2      1          1        0   168
#> [527,]  79   6      0          6        0   152
#> [528,]  80   6      1          0        1   119
#> [529,]  78   2      0        180        0   148
#> [530,]  80   5      0          5        1   130
#> [531,]  82   1      1          0        1    82
#> [532,]  77   4      0        180        1    98
#> [533,]  81   1      0        108        0   129
#> [534,]  82  21      1          2        0   155
#> [535,]  79   4      0          4        1   121
#> [536,]  80   6      0          6        1   110
#> [537,]  83   9      1          5        1   170
#> [538,]  79   7      1          6        0   130
#> [539,]  83   4      0        103        0    97
#> [540,]  81  11      1          8        0   160
#> [541,]  81   5      0        177        0    41
#> [542,]  80  11      1          8        0   170
#> [543,]  78  23      1         10        1   145
#> [544,]  79   4      0          4        1   183
#> [545,]  78   9      1          4        1   120
#> [546,]  82   8      1          1        0   128
#> [547,]  79   1      0        180        1   170
#> [548,]  81  15      0        180        1   140
#> [549,]  80   7      1          0        1   146
#> [550,]  84   5      1          1        1    85
#> [551,]  81  20      1          9        0   170
#> [552,]  83   8      0          8        0   115
#> [553,]  81  16      0         16        1   110
#> [554,]  80   6      1          0        1   150
#> [555,]  80  11      1          8        0   110
#> [556,]  81   8      0        180        0   146
#> [557,]  80   8      1          7        0   160
#> [558,]  83   2      0          2        1   155
#> [559,]  82   6      0        128        1   100
#> [560,]  80   3      1          1        1   230
#> [561,]  82  23      1          0        0   110
#> [562,]  84   5      0        180        1   203
#> [563,]  84   4      0          4        1    85
#> [564,]  83   3      0        180        0   174
#> [565,]  79   9      1          8        0   150
#> [566,]  85   3      1          2        1   160
#> [567,]  80  13      1          8        1   140
#> [568,]  84   4      0         89        1   129
#> [569,]  80   2      1          0        1   130
#> [570,]  79   4      0          4        1    60
#> [571,]  83   1      0          1        1   100
#> [572,]  82  19      0         19        0   120
#> [573,]  80  30      1         13        0   220
#> [574,]  83   3      0        114        0    98
#> [575,]  81  14      1         12        1   128
#> [576,]  83   2      0        154        0   130
#> [577,]  85   9      1          6        1   160
#> [578,]  83   1      0        180        0   160
#> [579,]  84  15      1         13        1   110
#> [580,]  81   1      0          1        1   145
#> [581,]  81  12      0         12        1   163
#> [582,]  82   5      1          0        1   146
#> [583,]  81   4      0          4        0   160
#> [584,]  86  12      0        180        1   120
#> [585,]  83  12      1          2        1   170
#> [586,]  81  19      1         14        0   120
#> [587,]  82  15      1          0        0   183
#> [588,]  80   2      0         88        0   135
#> [589,]  81  16      1          9        0   180
#> [590,]  84   6      0        165        0   145
#> [591,]  86   3      0          3        1   140
#> [592,]  82   9      0        180        1   134
#> [593,]  81  13      0        180        0   152
#> [594,]  85   3      0          3        1   118
#> [595,]  81   2      1          0        1   118
#> [596,]  83   9      0        180        1   149
#> [597,]  82   1      0        180        1   193
#> [598,]  83   4      0          4        0   130
#> [599,]  86  12      1          0        1   132
#> [600,]  82  14      1         11        1   103
#> [601,]  84  16      0         70        1   150
#> [602,]  83  19      0         43        0   150
#> [603,]  84   3      1          2        0   125
#> [604,]  83  10      1          0        1   190
#> [605,]  86   2      0        180        1   169
#> [606,]  88  14      1          3        1   130
#> [607,]  84   3      0          3        1   121
#> [608,]  83  13      1         12        0   170
#> [609,]  84   7      1          2        0   148
#> [610,]  87   2      0        180        0   113
#> [611,]  84   9      0         92        1   110
#> [612,]  86   4      0         38        1   122
#> [613,]  82   4      0          4        0   130
#> [614,]  86  13      0        177        0   163
#> [615,]  85   3      0          3        1   113
#> [616,]  86   6      1          1        0   112
#> [617,]  83  20      1          3        1   150
#> [618,]  88   4      0          4        1   115
#> [619,]  85  22      0         22        1   184
#> [620,]  86   9      1          7        1   142
#> [621,]  87   2      0        180        1   130
#> [622,]  86   6      0         46        0   173
#> [623,]  88   2      0        180        1    68
#> [624,]  83   3      0          3        1   130
#> [625,]  87   8      0          8        1   157
#> [626,]  86  15      1          8        1   109
#> [627,]  89   5      0        119        1   140
#> [628,]  87   6      0        180        1   110
#> [629,]  84   8      0        180        1   119
#> [630,]  84   2      0        110        1   174
#> [631,]  87  29      0         29        1    97
#> [632,]  89  10      0         46        1   170
#> [633,]  90  14      0         14        1   100
#> [634,]  86   4      0        180        1   145
#> [635,]  91   8      0          8        0   100
#> [636,]  87   2      0        180        0   160
#> [637,]  87   6      1          0        0   125
#> [638,]  86   3      1          0        1    80
#> [639,]  88   7      0         24        0   119
#> [640,]  88   8      0         50        1   154
#> [641,]  90  11      1         10        1   186
#> [642,]  87   6      0        126        1   168
#> [643,]  86   9      1          7        0   130
#> [644,]  90   4      1          0        0   121
#> [645,]  91   1      0          1        1    74
#> [646,]  87  43      0        178        1   130
#> [647,]  87   5      0         36        1   150
#> [648,]  90   5      1          0        1   125
#> [649,]  88   3      1          2        0   159
#> [650,]  89   3      1          1        1   160
#> [651,]  92   1      0          1        1   167
#> [652,]  87   7      0         74        1   105
#> [653,]  89  12      1          0        1   130
#> [654,]  89   2      0        168        0   118
#> [655,]  91   5      0        169        1   176
#> [656,]  92   7      0          7        1   110
#> [657,]  91   0      0          0        0     0
#> [658,]  89  14      0        180        1    84
#> [659,]  91   2      0          2        1   116
#> [660,]  93   8      0        179        1   110
#> [661,]  94   8      0          8        1   142
#> [662,]  92   4      0         76        1   149
#> [663,]  91   1      0        180        0   158
#> [664,]  90   3      0         67        0   162
#> [665,]  95   8      1          5        1   150
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+
#>  [11]  12.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+   2.0+ 180.0+
#>  [21]   3.0  180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0 
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 161.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+
#>  [61] 180.0+  10.0+ 180.0+ 180.0+   7.0  180.0+   2.0    1.0  179.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81]  88.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+
#>  [91] 180.0+ 180.0+   4.0+ 180.0+ 166.0+  99.0  180.0+  16.0+ 180.0+   7.0+
#> [101] 180.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+ 174.0+  28.0    6.0+   1.0 
#> [111] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+  16.0+  16.0   15.0+ 180.0+  12.0+   8.0    2.0    3.0+
#> [131] 180.0+ 140.0    1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+
#> [141] 180.0+ 180.0+ 180.0+ 180.0+  15.0  166.0+   4.0+ 180.0+ 180.0+ 180.0+
#> [151] 180.0+   4.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+   9.0+ 161.0+ 180.0+ 180.0+
#> [171]   1.0  180.0+  10.0+ 180.0+  17.0   45.0   19.0  180.0+ 180.0+ 172.0+
#> [181] 172.0+  24.0  180.0+   8.0  180.0+   1.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [191] 180.0+ 180.0+ 180.0+ 169.0    7.0    7.0+   6.0  180.0+ 180.0+   3.0+
#> [201] 180.0+  30.0  180.0+ 180.0+  28.0    5.0   18.0    5.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+   7.0+  22.0 
#> [221] 180.0+ 180.0+  84.0  180.0+ 180.0+   1.0  180.0+   3.0+ 167.0    6.0+
#> [231] 180.0+ 180.0+  17.0  180.0+ 180.0+  36.0  180.0+   3.0+ 180.0+ 180.0+
#> [241] 180.0+   0.5  180.0+ 180.0+ 180.0+  12.0  180.0+   3.0  180.0+ 180.0+
#> [251] 180.0+  11.0+   2.0+  18.0+ 180.0+   3.0+   2.0+ 103.0   15.0  180.0+
#> [261] 180.0+ 179.0+ 166.0+  14.0+   3.0    0.5+ 180.0+ 180.0+ 175.0+ 180.0+
#> [271]   7.0+   8.0    5.0   16.0  180.0+ 180.0+ 123.0+  18.0   80.0   15.0+
#> [281] 180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+   8.0+
#> [291]   3.0  175.0  180.0+  10.0  180.0+   6.0  180.0+  19.0+  12.0   99.0 
#> [301] 180.0+ 180.0+   0.5  180.0+ 180.0+ 152.0+  21.0+ 180.0+   1.0   18.0+
#> [311] 101.0    4.0    5.0  150.0  180.0+ 180.0+ 180.0+ 171.0    6.0  180.0+
#> [321] 180.0+ 180.0+ 180.0+  45.0    5.0+  36.0  180.0+ 180.0+ 180.0+   7.0 
#> [331]   8.0+ 180.0+   2.0+ 180.0+  18.0  172.0+ 180.0+ 180.0+   7.0    8.0+
#> [341] 123.0  180.0+ 180.0+  19.0    1.0    1.0   60.0   76.0  180.0+ 132.0 
#> [351] 162.0    7.0+   7.0+   9.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  76.0 
#> [361] 180.0+ 180.0+ 180.0+ 180.0+  28.0   16.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [371] 180.0+   7.0+  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [381]   3.0+ 180.0+  20.0  180.0+  20.0    0.5  180.0+ 180.0+   8.0   12.0 
#> [391]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 175.0    2.0  180.0+
#> [401] 180.0+ 179.0+   1.0  180.0+ 180.0+ 159.0   15.0  180.0+   1.0  180.0+
#> [411]  13.0  180.0+  10.0  104.0+   1.0   57.0   11.0    3.0+ 180.0+ 180.0+
#> [421] 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+  15.0+ 180.0+ 180.0+   3.0 
#> [431] 180.0+ 180.0+ 180.0+   6.0  180.0+  85.0  180.0+  17.0+ 180.0+ 174.0+
#> [441]   4.0  180.0+  12.0  180.0+ 180.0+  46.0  180.0+   4.0  180.0+  52.0 
#> [451] 180.0+  12.0  180.0+ 180.0+ 180.0+  33.0  180.0+   1.0    7.0+  79.0 
#> [461]   3.0  180.0+ 176.0+  47.0  180.0+ 180.0+ 180.0+   8.0+   7.0  180.0+
#> [471] 180.0+ 172.0  119.0  180.0+   8.0  180.0+ 180.0+   1.0   80.0  180.0+
#> [481]   4.0+ 152.0+   3.0   29.0   24.0   32.0    6.0    3.0+ 180.0+ 180.0+
#> [491] 180.0+   1.0   11.0    4.0    4.0  180.0+   6.0    3.0+   2.0+ 180.0+
#> [501]   1.0    1.0  180.0+ 138.0  180.0+   8.0   40.0   59.0   17.0   10.0+
#> [511]  93.0  118.0  173.0  180.0+  37.0  180.0+ 175.0+   7.0+  22.0    5.0+
#> [521] 171.0+ 166.0+   3.0+  10.0  180.0+  10.0    6.0+   6.0  180.0+   5.0 
#> [531]   1.0  180.0+ 108.0  180.0+   4.0    6.0    9.0+ 180.0+ 103.0  180.0+
#> [541] 177.0+ 169.0   70.0    4.0  180.0+ 180.0+ 180.0+ 180.0+   7.0+ 180.0+
#> [551]  20.0    8.0+  16.0  180.0+ 180.0+ 180.0+ 180.0+   2.0  128.0    3.0+
#> [561]  62.0  180.0+   4.0  180.0+ 180.0+ 180.0+ 180.0+  89.0  180.0+   4.0 
#> [571]   1.0   19.0   30.0  114.0  180.0+ 154.0  180.0+ 180.0+ 180.0+   1.0 
#> [581]  12.0    5.0+   4.0+ 180.0+  77.0  180.0+  83.0   88.0  180.0+ 165.0 
#> [591]   3.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 174.0 
#> [601]  70.0   43.0  180.0+ 180.0+ 180.0+  14.0    3.0   13.0  180.0+ 180.0+
#> [611]  92.0   38.0    4.0  177.0    3.0+   6.0+  20.0    4.0   22.0   11.0 
#> [621] 180.0+  46.0  180.0+   3.0+   8.0+ 180.0+ 119.0  180.0+ 180.0+ 110.0 
#> [631]  29.0   46.0   14.0  180.0+   8.0  180.0+  25.0    3.0   24.0   50.0 
#> [641]  11.0  126.0  180.0+   4.0    1.0  178.0+  36.0   89.0   75.0    3.0+
#> [651]   1.0   74.0  180.0+ 168.0  169.0    7.0    0.5  180.0+   2.0  179.0+
#> [661]   8.0+  76.0  180.0+  67.0    8.0    7.0+   0.5   69.0    2.0    3.0 
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
#>    0.831723 
```
