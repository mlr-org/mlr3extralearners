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
#> min 0.00321    44   2.664 0.1201       6
#> 1se 0.05739    13   2.770 0.1198       5
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35   5      1          2        0   172
#>   [4,]  38  13      1          0        1   161
#>   [5,]  36   1      0        180        1   155
#>   [6,]  35   0      0        180        1   119
#>   [7,]  38  12      1          8        1   120
#>   [8,]  36   5      1          0        1   115
#>   [9,]  33   6      1          1        1   115
#>  [10,]  38  12      1         11        1    92
#>  [11,]  40  12      1          9        0   153
#>  [12,]  42   3      1          1        1   130
#>  [13,]  37   1      1          0        1   146
#>  [14,]  40   2      1          1        1   148
#>  [15,]  38   5      1          3        0   125
#>  [16,]  42   2      0          2        0   140
#>  [17,]  40  11      1         10        1   120
#>  [18,]  41   2      1          1        0   166
#>  [19,]  40   1      1          0        1   145
#>  [20,]  42   4      0        180        0   162
#>  [21,]  42  15      1         13        1   125
#>  [22,]  40   3      1          1        0   170
#>  [23,]  42  12      1         10        1   170
#>  [24,]  42   2      0        180        1   124
#>  [25,]  44   5      1          1        0   170
#>  [26,]  45   3      0        180        1   154
#>  [27,]  41  10      1          8        0   150
#>  [28,]  41  13      1          1        0   140
#>  [29,]  45   6      0        180        1   170
#>  [30,]  41   5      1          4        1   141
#>  [31,]  46  15      0        180        0   120
#>  [32,]  48  15      0        180        1   160
#>  [33,]  45   3      0        150        0   130
#>  [34,]  46   7      1          2        0   166
#>  [35,]  43  29      0        180        1   180
#>  [36,]  45   4      1          0        0   124
#>  [37,]  43  10      0        180        0   185
#>  [38,]  47   6      1          0        1   116
#>  [39,]  44   0      1          0        1    96
#>  [40,]  47   4      1          3        1   160
#>  [41,]  43   3      1          0        1   124
#>  [42,]  45   8      1          0        1   117
#>  [43,]  49   5      0         73        1   136
#>  [44,]  46   2      1          1        1   122
#>  [45,]  46   6      1          0        1   100
#>  [46,]  44   4      1          0        1   114
#>  [47,]  44   9      1          8        1   135
#>  [48,]  44   2      0        180        0   142
#>  [49,]  46  15      0        180        1   120
#>  [50,]  45   9      1          0        1   145
#>  [51,]  47   3      1          1        1   120
#>  [52,]  48   3      0        180        0   154
#>  [53,]  48  12      1         11        0   200
#>  [54,]  47   5      1          3        1   130
#>  [55,]  48   2      1          0        0   184
#>  [56,]  47   7      0        180        0   145
#>  [57,]  50   4      1          1        0   125
#>  [58,]  50   6      1          2        1   140
#>  [59,]  49   7      1          7        1   110
#>  [60,]  46   3      1          1        1   140
#>  [61,]  46   9      1          9        1   122
#>  [62,]  50   7      0        180        1   110
#>  [63,]  49   2      0          2        0   105
#>  [64,]  51   1      0          1        1   145
#>  [65,]  47   2      0        180        0   150
#>  [66,]  49  23      0        179        1   112
#>  [67,]  46   6      1          0        1   156
#>  [68,]  52   2      0        180        1   170
#>  [69,]  50   1      1          0        0   150
#>  [70,]  50   9      0        180        0   130
#>  [71,]  49   7      1          4        1    90
#>  [72,]  47   8      0        180        0   160
#>  [73,]  47   6      0        180        1   162
#>  [74,]  51   8      0        180        1   140
#>  [75,]  52   2      0        180        0   155
#>  [76,]  46   3      0        180        1   120
#>  [77,]  48   7      1          0        1   110
#>  [78,]  47   2      1          1        0   110
#>  [79,]  52   4      1          4        0   152
#>  [80,]  49   9      1          3        0   102
#>  [81,]  49  15      0        180        1   160
#>  [82,]  53   5      0        180        1   140
#>  [83,]  54  17      1         12        1   102
#>  [84,]  51   3      1          1        0   140
#>  [85,]  50  10      1          6        0   122
#>  [86,]  53   8      1          7        0   160
#>  [87,]  51  25      1          1        0   202
#>  [88,]  49   5      1          2        1   150
#>  [89,]  53   4      0          4        0   140
#>  [90,]  48   6      0        180        0   160
#>  [91,]  53   4      1          0        1   156
#>  [92,]  54   9      1          0        1   138
#>  [93,]  55   3      1          1        0   150
#>  [94,]  54  23      1         10        0   131
#>  [95,]  55   6      1          2        1   114
#>  [96,]  55   4      1          2        0   150
#>  [97,]  52   4      0        180        1   180
#>  [98,]  51  13      1         11        0   145
#>  [99,]  54   4      1          0        1   121
#> [100,]  55  28      1         13        1   160
#> [101,]  49   6      1          0        1   130
#> [102,]  49   1      0          1        1   110
#> [103,]  50   7      1          1        0   156
#> [104,]  53   9      0          9        1    95
#> [105,]  53   8      1          0        1   130
#> [106,]  50   7      1          0        1   127
#> [107,]  56   4      1          1        1   130
#> [108,]  55   1      0        180        0   127
#> [109,]  55   2      0          2        0   145
#> [110,]  54   7      1          0        1   100
#> [111,]  56   3      0        180        1   193
#> [112,]  56   2      0        180        0   132
#> [113,]  53  18      1          9        1   150
#> [114,]  54   3      0        180        1   180
#> [115,]  55   6      0        180        0   170
#> [116,]  52  16      0         16        0   152
#> [117,]  53  10      1          9        0   172
#> [118,]  52  16      1         14        0   170
#> [119,]  53  15      0         15        1    90
#> [120,]  55   6      1          5        1   138
#> [121,]  54  12      1          0        1   190
#> [122,]  54   3      0        180        0   128
#> [123,]  55   1      0          2        0   130
#> [124,]  54   7      1          2        0   129
#> [125,]  54   2      1          1        0   135
#> [126,]  52   9      1          3        0   170
#> [127,]  57   5      1          3        1   138
#> [128,]  57   1      0        180        1   156
#> [129,]  57   1      0          1        1   100
#> [130,]  55  11      1          7        0   104
#> [131,]  56  14      1         11        0   130
#> [132,]  57  10      0        180        1   170
#> [133,]  54   5      0        180        1   108
#> [134,]  55   3      1          1        1   156
#> [135,]  53  21      1         13        1   130
#> [136,]  57   4      0        180        1   119
#> [137,]  58   6      1          0        1    90
#> [138,]  54  17      1          8        1   227
#> [139,]  55   9      1          2        1   147
#> [140,]  55  13      0        166        1   140
#> [141,]  54  23      1          8        0   120
#> [142,]  57   4      1          2        1   185
#> [143,]  53   4      0        147        1   145
#> [144,]  53   7      1          0        1   120
#> [145,]  57  11      1         10        1   129
#> [146,]  55   3      1          2        0   140
#> [147,]  54   7      1          0        1   141
#> [148,]  56   4      0          4        0   164
#> [149,]  59  15      1         10        0   140
#> [150,]  58   9      1          0        1   180
#> [151,]  58   1      1          1        1   200
#> [152,]  55   5      1          0        0   140
#> [153,]  56   7      1          5        1   120
#> [154,]  57   1      0        180        0   148
#> [155,]  60  11      1          9        0   106
#> [156,]  59   3      0        180        0   120
#> [157,]  57   2      0          2        1   120
#> [158,]  60   5      1          1        0   138
#> [159,]  57   5      0        180        1   130
#> [160,]  58  11      1          9        1   124
#> [161,]  57  10      1          9        0   103
#> [162,]  59   6      1          0        1   140
#> [163,]  59   5      0        180        1   155
#> [164,]  59   4      1          0        1   152
#> [165,]  58  26      1          0        1   189
#> [166,]  61   9      0          9        1   160
#> [167,]  60   0      1          0        1    80
#> [168,]  58   8      0        161        1   140
#> [169,]  58  14      1          6        0   190
#> [170,]  61   4      1          3        0   151
#> [171,]  61   3      1          2        1   102
#> [172,]  61  20      1         13        0   130
#> [173,]  58  10      0         10        1   150
#> [174,]  57   4      1          3        0   138
#> [175,]  56  14      0         45        0   130
#> [176,]  57   3      1          2        0   120
#> [177,]  59   9      1          0        1    80
#> [178,]  58  11      0        172        1   135
#> [179,]  55   9      1          7        1   135
#> [180,]  61   4      1          0        1   115
#> [181,]  56   8      1          8        0   120
#> [182,]  61  13      1         12        1   130
#> [183,]  59  11      1          8        1   190
#> [184,]  57  15      1         13        1   110
#> [185,]  59   5      1          2        0   182
#> [186,]  58   5      1          1        1   135
#> [187,]  59  10      0        180        0   160
#> [188,]  61   8      0         77        0   120
#> [189,]  62  10      1          0        1   153
#> [190,]  62   7      1          2        1   180
#> [191,]  57   3      1          0        0   100
#> [192,]  61  28      1          7        0   133
#> [193,]  61   7      0          7        1   150
#> [194,]  60   7      0          7        0   147
#> [195,]  61   6      0          6        0   134
#> [196,]  62   4      1          0        0   160
#> [197,]  60  17      1          8        1   140
#> [198,]  62   4      1          3        0   173
#> [199,]  58   2      0         30        0   202
#> [200,]  59   1      0        180        0   155
#> [201,]  59  16      1          9        1   133
#> [202,]  63   6      0         28        1   120
#> [203,]  61  13      0         13        0   120
#> [204,]  61   5      0          5        1   110
#> [205,]  57  18      1          9        1    93
#> [206,]  61   5      0          5        1   160
#> [207,]  57   2      1          1        0   159
#> [208,]  62   1      1          0        1   172
#> [209,]  63   3      1          1        0   180
#> [210,]  63   1      0        180        1   130
#> [211,]  61   7      0        180        0   135
#> [212,]  63   4      1          3        0   222
#> [213,]  62   3      0        180        1   105
#> [214,]  63   4      0        180        1   190
#> [215,]  63  15      1         10        1   126
#> [216,]  64   4      0        180        0   130
#> [217,]  63   4      1          1        0   155
#> [218,]  60  18      1         13        0   132
#> [219,]  59   8      0        180        1   140
#> [220,]  61   9      1          9        1   150
#> [221,]  58   9      1          9        0   110
#> [222,]  62   7      0          7        0   150
#> [223,]  59   1      0         22        1   162
#> [224,]  59   4      0        180        0   196
#> [225,]  60   7      0          7        0   140
#> [226,]  59   5      1          1        0   148
#> [227,]  65  13      0        180        1   100
#> [228,]  63   1      0          1        0   162
#> [229,]  63   1      0          1        0   130
#> [230,]  62   6      0        180        0   170
#> [231,]  61  15      1         13        0   170
#> [232,]  59   4      0          4        0   149
#> [233,]  60   3      0          3        0   168
#> [234,]  64  10      1          9        0   160
#> [235,]  62   6      0          6        0   120
#> [236,]  63  12      1         10        0   200
#> [237,]  59  10      0        180        1   130
#> [238,]  60   8      0         17        1   130
#> [239,]  66   1      1          0        1   120
#> [240,]  64   6      1          0        1   140
#> [241,]  63  10      1          0        1   148
#> [242,]  65  36      1         11        0   140
#> [243,]  63   4      1          3        0   162
#> [244,]  61  10      1          2        1   194
#> [245,]  64  32      1          9        1   160
#> [246,]  63  12      1          9        0   114
#> [247,]  63   7      0        180        0   120
#> [248,]  66   5      1          0        1   110
#> [249,]  65   8      1          0        0   168
#> [250,]  65  10      1          8        1   120
#> [251,]  64   0      0          0        1    90
#> [252,]  60   6      0        180        0   130
#> [253,]  64  21      1         10        0   190
#> [254,]  61  12      1         11        0   154
#> [255,]  64   9      0        180        0   150
#> [256,]  65   3      0        180        1   190
#> [257,]  63  16      1          7        1   110
#> [258,]  64   7      0        180        1   120
#> [259,]  66   6      1          1        1   130
#> [260,]  63  12      0         12        1   150
#> [261,]  62   3      1          1        1   199
#> [262,]  65   3      1          0        1    80
#> [263,]  63   2      1          1        0   180
#> [264,]  62  13      1         11        0   180
#> [265,]  64   2      0          2        0   201
#> [266,]  66  18      1          5        0   142
#> [267,]  66  16      1         11        1   169
#> [268,]  62   9      0        180        0   145
#> [269,]  61  14      1          5        0   140
#> [270,]  63   9      1          8        1   160
#> [271,]  63   2      1          0        0   140
#> [272,]  64  19      1          8        1   160
#> [273,]  67   6      0        180        1   170
#> [274,]  65  15      1         11        1   160
#> [275,]  68   5      1          4        1   150
#> [276,]  64  13      1         12        1   150
#> [277,]  66  13      1          0        0   118
#> [278,]  64  14      1         13        1   150
#> [279,]  64   0      0          0        1   148
#> [280,]  66   3      1          0        1   135
#> [281,]  68   1      0        180        1   166
#> [282,]  64  10      1          9        1   110
#> [283,]  63   7      1          0        0   162
#> [284,]  67   8      1          1        1   130
#> [285,]  68   5      0          5        1    90
#> [286,]  66  14      0        180        0   130
#> [287,]  64   1      0          1        1   120
#> [288,]  68  18      0        180        1   260
#> [289,]  65  17      1         14        1   100
#> [290,]  65  18      1          3        0   120
#> [291,]  67  11      0         11        0   150
#> [292,]  68  11      0        180        0   160
#> [293,]  68  14      0         79        0   172
#> [294,]  65  15      1         12        1   150
#> [295,]  66  11      1          0        0   100
#> [296,]  65   4      1          2        1   145
#> [297,]  69  12      0         15        1   140
#> [298,]  66  15      1         13        1   160
#> [299,]  63   2      0        180        0   150
#> [300,]  69   6      0        180        1   100
#> [301,]  63   8      0        180        1   120
#> [302,]  68  14      1         13        1   140
#> [303,]  65   8      1          0        1    90
#> [304,]  67   7      1          4        1   130
#> [305,]  63   2      1          0        0    99
#> [306,]  67   2      0        180        0   184
#> [307,]  67  12      1         12        0   160
#> [308,]  69   6      0         99        1   140
#> [309,]  65   4      1          1        0   130
#> [310,]  66   4      0        180        1   130
#> [311,]  70  15      1         12        1   132
#> [312,]  64   0      1          0        1   118
#> [313,]  67   2      0         18        0   131
#> [314,]  66   7      1          5        1   131
#> [315,]  66   4      0        180        0   177
#> [316,]  69   4      1          3        1   150
#> [317,]  65  13      1         12        1   130
#> [318,]  69  17      1         10        0   140
#> [319,]  69   8      0         93        0   140
#> [320,]  65   6      0        101        1   115
#> [321,]  71   3      0          5        0   112
#> [322,]  71  20      1          0        1   160
#> [323,]  67   2      0        180        0   128
#> [324,]  66   9      1          3        1   151
#> [325,]  69   8      0        180        1   153
#> [326,]  66   4      0        180        0   130
#> [327,]  67   6      1          4        0   130
#> [328,]  69   0      0          0        1   148
#> [329,]  65   2      0        180        0   130
#> [330,]  68   7      1          0        1   150
#> [331,]  69   3      1          2        0   151
#> [332,]  69   8      0        180        1   180
#> [333,]  71   7      0          7        0   230
#> [334,]  66   2      0          2        1   228
#> [335,]  71   6      0         45        1   158
#> [336,]  69   5      0          5        1   142
#> [337,]  71   3      0        103        0   133
#> [338,]  69   3      0          3        1   130
#> [339,]  67   1      0         36        1   104
#> [340,]  67   5      0          5        0   130
#> [341,]  69   8      1          5        1   195
#> [342,]  69   6      1          4        1   174
#> [343,]  72   3      1          0        1   132
#> [344,]  69   8      1          7        1   108
#> [345,]  67   3      0        180        0   110
#> [346,]  69  19      0        180        0   130
#> [347,]  68  18      0         18        1   100
#> [348,]  69  11      1          0        1   120
#> [349,]  66   2      0        180        0   130
#> [350,]  69   4      1          3        0   132
#> [351,]  68   2      0          7        1   130
#> [352,]  69   8      1          2        0   121
#> [353,]  67  13      1          9        0   130
#> [354,]  70   3      0        123        0   130
#> [355,]  72   5      1          4        0   170
#> [356,]  68   3      0         19        0   135
#> [357,]  67  12      1          8        0   120
#> [358,]  69   1      0          1        1   110
#> [359,]  67   1      0          1        1    60
#> [360,]  69   5      0         76        0   120
#> [361,]  67   8      1          0        1   130
#> [362,]  68  10      1          8        1   160
#> [363,]  72  30      1          0        1   145
#> [364,]  70  11      0        180        1   210
#> [365,]  72  19      1          8        0   120
#> [366,]  72  12      1         10        0   170
#> [367,]  67   5      1          0        1   147
#> [368,]  73  13      0        152        1   130
#> [369,]  72   2      0          2        1   100
#> [370,]  72   6      1          5        0   115
#> [371,]  71   1      0        173        1   188
#> [372,]  68  23      0        180        1   220
#> [373,]  71   3      1          2        0   150
#> [374,]  68   4      1          3        0   210
#> [375,]  71   5      0        180        0   191
#> [376,]  73   6      0        180        1   117
#> [377,]  69  16      1         10        1   140
#> [378,]  69   8      1          1        0   164
#> [379,]  68   7      0        180        1   130
#> [380,]  70   4      0        180        0   180
#> [381,]  73   6      1          0        1   270
#> [382,]  71   2      1          0        1   180
#> [383,]  73   7      0          7        1   140
#> [384,]  68  15      1         13        1   130
#> [385,]  70  13      1          9        0   100
#> [386,]  73   0      0        180        1   161
#> [387,]  69   2      1          0        1   110
#> [388,]  71   3      1          1        0   150
#> [389,]  71  15      1         11        0   165
#> [390,]  74  20      0         20        1   180
#> [391,]  68   9      0        180        1   120
#> [392,]  71  20      1         10        0   140
#> [393,]  74   0      1          0        1    90
#> [394,]  70   5      1          0        1   190
#> [395,]  73  10      1          8        0   106
#> [396,]  69  12      1          1        1   149
#> [397,]  70  26      1         11        1   120
#> [398,]  73   4      0         58        1   160
#> [399,]  72   5      1          3        1   160
#> [400,]  70   3      0        180        1   154
#> [401,]  73   6      0        180        0   110
#> [402,]  72  15      1          0        1   150
#> [403,]  71   7      1          2        0   143
#> [404,]  74   3      0          3        1   150
#> [405,]  69   2      1          1        1    80
#> [406,]  71  14      1         13        1   170
#> [407,]  72  10      1          8        1   153
#> [408,]  69   7      0        180        1   144
#> [409,]  70   8      0          8        0   120
#> [410,]  75   2      1          1        0   145
#> [411,]  73  10      1          9        1   146
#> [412,]  72  10      1          9        1   160
#> [413,]  74  15      1          9        1   179
#> [414,]  73   1      0          1        1    80
#> [415,]  75   9      1          7        0   140
#> [416,]  75  13      1          1        1   130
#> [417,]  71  11      1          8        0   110
#> [418,]  71   4      0          4        0   134
#> [419,]  72  15      1         12        1   120
#> [420,]  73  10      0        180        0   162
#> [421,]  72   4      1          0        1   197
#> [422,]  71   3      1          0        0   144
#> [423,]  73   5      0        180        0   126
#> [424,]  73   4      0        180        0   124
#> [425,]  74  34      1          8        1   233
#> [426,]  71  32      1         12        1   107
#> [427,]  72   5      0        180        0   154
#> [428,]  72   3      0        180        0   160
#> [429,]  77  11      0         11        1   150
#> [430,]  77   4      0          4        0   185
#> [431,]  75   3      1          1        0   180
#> [432,]  72   7      1          2        0   142
#> [433,]  73  15      0         15        1   160
#> [434,]  73  10      1         10        0   124
#> [435,]  74   7      0        180        1   150
#> [436,]  74   3      0          3        1   128
#> [437,]  76   1      0        180        0   114
#> [438,]  74   2      1          1        0   140
#> [439,]  74  19      1          4        1   200
#> [440,]  75  23      1         14        1   110
#> [441,]  74   2      0        180        0   190
#> [442,]  72   4      0         85        1   120
#> [443,]  72   4      1          3        0   160
#> [444,]  76  17      1          0        1   200
#> [445,]  73   4      1          3        1   125
#> [446,]  76  13      1         10        0   110
#> [447,]  75   4      1          0        1   122
#> [448,]  73  13      1         11        0   195
#> [449,]  74   8      1          0        1   105
#> [450,]  76  13      1          8        1   148
#> [451,]  74   6      0        180        0   160
#> [452,]  76   4      0          4        1   155
#> [453,]  75   1      0          1        1   125
#> [454,]  74   2      0        180        0   111
#> [455,]  73   0      0        180        0   156
#> [456,]  72   5      0        180        0   120
#> [457,]  78  12      1         11        1   160
#> [458,]  76  44      1         10        0   105
#> [459,]  76   5      0        180        0   185
#> [460,]  76   5      1          0        1   167
#> [461,]  73  33      1         12        1   175
#> [462,]  77  12      1          9        1   100
#> [463,]  77  12      0        180        0   130
#> [464,]  78   5      1          0        1   170
#> [465,]  73   7      1          0        0   174
#> [466,]  74   6      0         79        1   140
#> [467,]  75   3      1          1        1   171
#> [468,]  74   9      1          8        0   200
#> [469,]  75   6      0        180        0   150
#> [470,]  77   3      0        180        0   110
#> [471,]  76  29      0         47        0    90
#> [472,]  73   8      1          1        1   162
#> [473,]  73  11      1          2        1   110
#> [474,]  74   2      0        180        0   100
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
#> [486,]  75  13      1          6        0   150
#> [487,]  74  10      1          8        0   135
#> [488,]  76   1      0          1        1    83
#> [489,]  79   4      0         80        0   145
#> [490,]  78  12      1          9        0   150
#> [491,]  78   2      1          1        0   130
#> [492,]  75   4      1          0        0   212
#> [493,]  77   2      1          0        1   143
#> [494,]  78  10      0        180        1   130
#> [495,]  75   3      0          3        0     0
#> [496,]  76   7      0         29        1   150
#> [497,]  77  24      0         24        1   160
#> [498,]  79   8      0         32        1   120
#> [499,]  80   9      0         23        1   128
#> [500,]  78   6      1          0        1   240
#> [501,]  78  11      1          1        1   140
#> [502,]  79   2      1          0        1   121
#> [503,]  78  14      1          0        1   140
#> [504,]  81   1      0          1        0   130
#> [505,]  77   6      0          6        1   107
#> [506,]  80   3      1          0        1   120
#> [507,]  75   2      1          1        1   204
#> [508,]  78  11      0        180        1   135
#> [509,]  76   1      0          1        1   140
#> [510,]  77  31      1          3        1   161
#> [511,]  76   1      0          1        1    90
#> [512,]  77   7      0        180        1   170
#> [513,]  77   6      0          6        1   144
#> [514,]  79   4      1          0        1   120
#> [515,]  81   1      0        180        0   120
#> [516,]  80  15      1         12        1   150
#> [517,]  82   5      0          8        1   120
#> [518,]  80  40      1          0        1   138
#> [519,]  78   4      0         59        1   112
#> [520,]  80  17      1         12        0   100
#> [521,]  79  10      0         10        1   120
#> [522,]  81   4      1          2        1   126
#> [523,]  79  28      0        164        0   100
#> [524,]  80   9      0        118        1   186
#> [525,]  81   3      0        180        0   184
#> [526,]  81   2      0        175        0   172
#> [527,]  77  13      1          0        1   190
#> [528,]  78  15      0         15        0   165
#> [529,]  80   5      1          1        1   108
#> [530,]  78   4      0        180        0   175
#> [531,]  79   3      0          3        1   101
#> [532,]  76   1      0        166        0   131
#> [533,]  78  20      1          0        1   109
#> [534,]  80   1      0          1        0   100
#> [535,]  78   3      1          1        1   152
#> [536,]  82   3      1          1        1   144
#> [537,]  77   5      0         85        0   188
#> [538,]  80   2      1          1        0   168
#> [539,]  79   6      0          6        0   152
#> [540,]  80   6      1          0        1   119
#> [541,]  78   2      0        180        0   148
#> [542,]  80   5      0          5        1   130
#> [543,]  82   1      1          0        1    82
#> [544,]  79  10      0        180        1   150
#> [545,]  77   4      0        180        1    98
#> [546,]  81   1      0        108        0   129
#> [547,]  78  12      0        180        0   134
#> [548,]  79   1      0        125        0   193
#> [549,]  82  21      1          2        0   155
#> [550,]  84  22      1         10        0   180
#> [551,]  79   4      0          4        1   121
#> [552,]  82   5      0        180        0   110
#> [553,]  83   5      0        180        0   148
#> [554,]  79   7      1          6        0   130
#> [555,]  81   5      0        177        0    41
#> [556,]  78  23      1         10        1   145
#> [557,]  79   4      0          4        1   183
#> [558,]  78   9      1          4        1   120
#> [559,]  82   8      1          1        0   128
#> [560,]  81  15      0        180        1   140
#> [561,]  80   7      1          0        1   146
#> [562,]  84   5      1          1        1    85
#> [563,]  83   8      0          8        0   115
#> [564,]  81  16      0         16        1   110
#> [565,]  81   8      0        180        0   146
#> [566,]  79   7      0        177        0   197
#> [567,]  85   4      0        180        0    90
#> [568,]  81   2      1          1        0   198
#> [569,]  83   2      0          2        1   155
#> [570,]  82   6      0        128        1   100
#> [571,]  84   4      0        167        0   198
#> [572,]  80   3      1          1        1   230
#> [573,]  84   4      0          4        1    85
#> [574,]  81   1      0          1        1   150
#> [575,]  83   3      0        180        0   174
#> [576,]  81   4      0         90        1   138
#> [577,]  80  13      1          8        1   140
#> [578,]  80   2      1          0        1   130
#> [579,]  79   4      0          4        1    60
#> [580,]  80   6      0         71        1   189
#> [581,]  82  19      0         19        0   120
#> [582,]  80  30      1         13        0   220
#> [583,]  83   3      0        114        0    98
#> [584,]  83   1      0        180        0   160
#> [585,]  81   4      0          4        0   175
#> [586,]  84  15      1         13        1   110
#> [587,]  81   1      0          1        1   145
#> [588,]  81  12      0         12        1   163
#> [589,]  82  16      1          8        0   103
#> [590,]  81   4      0          4        0   160
#> [591,]  86  12      0        180        1   120
#> [592,]  83  12      1          2        1   170
#> [593,]  81  19      1         14        0   120
#> [594,]  82   3      1          2        0   130
#> [595,]  80   2      0         88        0   135
#> [596,]  86   8      0          8        1   132
#> [597,]  86   3      0          3        1   140
#> [598,]  84   3      0        180        1   120
#> [599,]  81  13      0        180        0   152
#> [600,]  81   4      0        180        0   160
#> [601,]  83   9      0        180        1   149
#> [602,]  83   4      0          4        0   130
#> [603,]  87   2      0          5        1   137
#> [604,]  86  12      1          0        1   132
#> [605,]  82  14      1         11        1   103
#> [606,]  84  16      0         70        1   150
#> [607,]  83  19      0         43        0   150
#> [608,]  84   3      1          2        0   125
#> [609,]  88  14      1          3        1   130
#> [610,]  83  13      1         12        0   170
#> [611,]  84   7      1          2        0   148
#> [612,]  84   3      0        180        1   170
#> [613,]  82   4      0          4        0   130
#> [614,]  86  13      0        177        0   163
#> [615,]  85   3      0          3        1   113
#> [616,]  84  13      0         62        1   100
#> [617,]  86   6      1          1        0   112
#> [618,]  88   4      0          4        0   100
#> [619,]  86   9      1          7        1   142
#> [620,]  87   2      0        180        1   130
#> [621,]  88   2      0        180        1    68
#> [622,]  83   3      0          3        1   130
#> [623,]  87   8      0          8        1   157
#> [624,]  86  15      1          8        1   109
#> [625,]  88   4      0          4        0    86
#> [626,]  89   4      0          4        1   153
#> [627,]  89   5      0        119        1   140
#> [628,]  87   1      0          1        0   170
#> [629,]  84   8      0        180        1   119
#> [630,]  85   8      0          8        1   136
#> [631,]  84   2      0        110        1   174
#> [632,]  87  15      1          9        1   138
#> [633,]  84   0      0        180        1   136
#> [634,]  89  10      0         46        1   170
#> [635,]  88   1      0          1        0   135
#> [636,]  86   4      0        180        1   145
#> [637,]  87   6      1          0        0   125
#> [638,]  91  10      0        145        0   135
#> [639,]  86   3      1          0        1    80
#> [640,]  88   7      0         24        0   119
#> [641,]  88   8      0         50        1   154
#> [642,]  87   6      0        126        1   168
#> [643,]  86   9      1          7        0   130
#> [644,]  90   4      1          0        0   121
#> [645,]  87  43      0        178        1   130
#> [646,]  87   5      0         36        1   150
#> [647,]  90   5      1          0        1   125
#> [648,]  88   3      1          2        0   159
#> [649,]  92   1      0          1        1   167
#> [650,]  91   3      0         33        1   137
#> [651,]  88   5      0        158        0   100
#> [652,]  87   7      0         74        1   105
#> [653,]  89  12      1          0        1   130
#> [654,]  91   5      0        169        1   176
#> [655,]  91   0      0          0        0     0
#> [656,]  90  18      0        180        0   188
#> [657,]  90  19      1         11        1   129
#> [658,]  94   6      0         50        0    78
#> [659,]  90   1      0          1        1   118
#> [660,]  91   2      0          2        1   116
#> [661,]  94   8      0          8        1   142
#> [662,]  90  16      0         16        1   106
#> [663,]  90   3      0         67        0   162
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  91   7      0          7        0   135
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  93   4      0        180        1   135
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+ 180.0+ 180.0+ 180.0+  12.0    5.0+ 180.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [31] 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+  73.0  161.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+
#>  [61] 180.0+ 180.0+   2.0    1.0  180.0+ 179.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+   4.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#>  [91] 166.0+ 180.0+ 180.0+ 152.0+   6.0+ 180.0+ 180.0+  13.0+ 180.0+  28.0 
#> [101]   6.0+   1.0  180.0+   9.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0    7.0+
#> [111] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0   15.0+ 180.0+
#> [121]  12.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 140.0  180.0+   1.0  180.0+
#> [131] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+
#> [141] 180.0+   4.0+ 147.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+   9.0+
#> [151]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+
#> [161] 180.0+  64.0  180.0+ 180.0+ 180.0+   9.0+   0.5  161.0+ 171.0+ 180.0+
#> [171]   3.0  180.0+  10.0+ 180.0+  45.0    3.0+   9.0+ 172.0+  24.0  180.0+
#> [181]   8.0  180.0+ 180.0+  15.0  180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+
#> [191] 180.0+  94.0    7.0    7.0+   6.0  180.0+ 180.0+ 180.0+  30.0  180.0+
#> [201] 180.0+  28.0   13.0+   5.0   18.0    5.0+ 180.0+   1.0  180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+
#> [221]   9.0    7.0+  22.0  180.0+   7.0+ 180.0+ 180.0+   1.0    1.0  180.0+
#> [231] 180.0+   4.0+   3.0+ 167.0    6.0+ 180.0+ 180.0+  17.0  180.0+ 180.0+
#> [241] 180.0+  36.0  180.0+  88.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [251]   0.5  180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0 
#> [261] 180.0+   3.0  180.0+ 180.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [271]   2.0+ 103.0  180.0+ 180.0+   5.0+  13.0  166.0+  14.0+   0.5+   3.0+
#> [281] 180.0+ 180.0+   7.0+   8.0    5.0  180.0+   1.0  180.0+ 180.0+ 123.0+
#> [291]  11.0+ 180.0+  79.0   15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+
#> [301] 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+  12.0   99.0  180.0+ 180.0+
#> [311] 180.0+   0.5   18.0    7.0+ 180.0+ 152.0+ 180.0+ 180.0+  93.0  101.0 
#> [321]   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0    0.5  180.0+ 180.0+
#> [331] 180.0+ 180.0+   7.0+   2.0   45.0    5.0+ 103.0    3.0+  36.0    5.0+
#> [341] 180.0+  97.0  180.0+   8.0+ 180.0+ 180.0+  18.0  180.0+ 180.0+ 180.0+
#> [351]   7.0    8.0+  13.0+ 123.0  180.0+  19.0  180.0+   1.0    1.0   76.0 
#> [361] 180.0+  10.0+ 162.0  180.0+ 180.0+  12.0  180.0+ 152.0    2.0  180.0+
#> [371] 173.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+ 180.0+
#> [381]   6.0  180.0+   7.0+  15.0   13.0+ 180.0+   2.0    3.0+ 180.0+  20.0 
#> [391] 180.0+  20.0    0.5  180.0+  87.0   12.0  180.0+  58.0  180.0+ 180.0+
#> [401] 180.0+ 180.0+ 180.0+   3.0    2.0   14.0+  10.0+ 180.0+   8.0+ 180.0+
#> [411] 180.0+ 159.0  180.0+   1.0  180.0+  13.0  180.0+   4.0+ 180.0+ 180.0+
#> [421] 180.0+ 180.0+ 180.0+ 180.0+  34.0  177.0+ 180.0+ 180.0+  11.0+   4.0+
#> [431] 180.0+   7.0   15.0+  10.0  180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+
#> [441] 180.0+  85.0  180.0+  17.0+ 180.0+ 174.0+   4.0  180.0+ 180.0+ 180.0+
#> [451] 180.0+   4.0    1.0  180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+
#> [461]  33.0  180.0+ 180.0+ 180.0+   7.0+  79.0    3.0  168.0+ 180.0+ 180.0+
#> [471]  47.0  180.0+  11.0  180.0+   7.0  180.0+   8.0+   7.0  180.0+ 180.0+
#> [481] 180.0+ 172.0  119.0   12.0  180.0+ 180.0+ 180.0+   1.0   80.0  180.0+
#> [491] 180.0+   4.0+   2.0  180.0+   3.0   29.0   24.0   32.0   23.0  180.0+
#> [501] 180.0+ 180.0+ 180.0+   1.0    6.0    3.0+   2.0+ 180.0+   1.0  171.0 
#> [511]   1.0  180.0+   6.0  138.0  180.0+ 180.0+   8.0   40.0   59.0   17.0 
#> [521]  10.0+  93.0  164.0  118.0  180.0+ 175.0+  22.0   15.0+   5.0+ 180.0+
#> [531]   3.0  166.0+  20.0+   1.0    3.0+ 180.0+  85.0   10.0    6.0+   6.0 
#> [541] 180.0+   5.0    1.0  180.0+ 180.0+ 108.0  180.0+ 125.0  180.0+ 180.0+
#> [551]   4.0  180.0+ 180.0+ 180.0+ 177.0+  70.0    4.0  180.0+ 180.0+ 180.0+
#> [561]   7.0+ 180.0+   8.0+  16.0  180.0+ 177.0+ 180.0+ 180.0+   2.0  128.0 
#> [571] 167.0    3.0+   4.0    1.0  180.0+  90.0  180.0+ 180.0+   4.0   71.0 
#> [581]  19.0   30.0  114.0  180.0+   4.0+ 180.0+   1.0   12.0   16.0+   4.0+
#> [591] 180.0+  77.0  180.0+   3.0   88.0    8.0    3.0  180.0+ 180.0+ 180.0+
#> [601] 180.0+   4.0+   5.0  180.0+ 174.0   70.0   43.0  180.0+  14.0   13.0 
#> [611] 180.0+ 180.0+   4.0  177.0    3.0+  62.0    6.0+   4.0+  11.0  180.0+
#> [621] 180.0+   3.0+   8.0+ 180.0+   4.0    4.0  119.0    1.0+ 180.0+   8.0 
#> [631] 110.0  180.0+ 180.0+  46.0    1.0+ 180.0+  25.0  145.0    3.0   24.0 
#> [641]  50.0  126.0  180.0+   4.0  178.0+  36.0   89.0   75.0    1.0   33.0 
#> [651] 158.0   74.0  180.0+ 169.0    0.5  180.0+ 180.0+  50.0    1.0+   2.0 
#> [661]   8.0+  16.0   67.0    8.0   26.0   53.0    7.0+  69.0    2.0  180.0+
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
#>   0.8264143 
```
