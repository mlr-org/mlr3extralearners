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
#> min 0.00332    45   2.582 0.1117       6
#> 1se 0.05941    14   2.685 0.1139       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   5      1          2        0   172
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      0        180        0   121
#>   [7,]  35   2      1          1        1   112
#>   [8,]  37   9      0        180        1   151
#>   [9,]  38  13      1          0        1   161
#>  [10,]  36   1      0        180        1   155
#>  [11,]  35   0      0        180        1   119
#>  [12,]  36   5      1          0        1   115
#>  [13,]  33   6      1          1        1   115
#>  [14,]  38  12      1         11        1    92
#>  [15,]  40  12      1          9        0   153
#>  [16,]  42   3      1          1        1   130
#>  [17,]  37   1      1          0        1   146
#>  [18,]  40   2      1          1        1   148
#>  [19,]  38   5      1          3        0   125
#>  [20,]  42   2      0          2        0   140
#>  [21,]  40  11      1         10        1   120
#>  [22,]  42   2      0        180        0   100
#>  [23,]  41   2      1          1        0   166
#>  [24,]  40   1      1          0        1   145
#>  [25,]  43   4      1          0        1   130
#>  [26,]  42  15      1         13        1   125
#>  [27,]  42  12      1         10        1   170
#>  [28,]  43   2      1          1        1   116
#>  [29,]  42   2      0        180        1   124
#>  [30,]  45   3      0        180        1   154
#>  [31,]  41  10      1          8        0   150
#>  [32,]  44   3      0        180        0   141
#>  [33,]  45   9      1          7        0   110
#>  [34,]  45   6      0        180        1   170
#>  [35,]  41   5      1          4        1   141
#>  [36,]  44   2      1          1        1   150
#>  [37,]  45   2      0        180        1   140
#>  [38,]  46  15      0        180        0   120
#>  [39,]  46   2      1          1        0   126
#>  [40,]  47   4      1          3        0   118
#>  [41,]  45   3      0        150        0   130
#>  [42,]  46   7      1          2        0   166
#>  [43,]  43  29      0        180        1   180
#>  [44,]  43  10      0        180        0   185
#>  [45,]  47   6      1          0        1   116
#>  [46,]  46  13      1         10        0   100
#>  [47,]  47   4      1          3        1   160
#>  [48,]  43   3      1          0        1   124
#>  [49,]  45   8      1          0        1   117
#>  [50,]  45   5      0          5        0   141
#>  [51,]  46   2      1          1        1   122
#>  [52,]  46   6      1          0        1   100
#>  [53,]  44   4      1          0        1   114
#>  [54,]  47   2      0        180        0   108
#>  [55,]  44   9      1          8        1   135
#>  [56,]  46   4      0        180        1   121
#>  [57,]  46  15      0        180        1   120
#>  [58,]  45   9      1          0        1   145
#>  [59,]  47   3      1          1        1   120
#>  [60,]  48   3      0        180        0   154
#>  [61,]  47   9      1          6        0   170
#>  [62,]  47  10      0         10        1   140
#>  [63,]  48   2      1          0        0   184
#>  [64,]  47   7      0        180        0   145
#>  [65,]  50   6      1          2        1   140
#>  [66,]  46   3      1          1        1   140
#>  [67,]  46   9      1          9        1   122
#>  [68,]  50   7      0        180        1   110
#>  [69,]  49   2      0          2        0   105
#>  [70,]  51   1      0          1        1   145
#>  [71,]  49  15      1         11        1   160
#>  [72,]  47   2      0        180        0   150
#>  [73,]  49  23      0        179        1   112
#>  [74,]  46   6      1          0        1   156
#>  [75,]  50   4      0          4        1   100
#>  [76,]  50   1      1          0        0   150
#>  [77,]  50   9      0        180        0   130
#>  [78,]  49   7      1          4        1    90
#>  [79,]  47   8      0        180        0   160
#>  [80,]  51   8      0        180        1   140
#>  [81,]  52   2      0        180        0   155
#>  [82,]  46   3      0        180        1   120
#>  [83,]  46   1      1          1        0   145
#>  [84,]  50   4      1          1        0   150
#>  [85,]  53   8      0         36        1   160
#>  [86,]  47   2      1          1        0   110
#>  [87,]  52   4      1          4        0   152
#>  [88,]  49  15      0        180        1   160
#>  [89,]  53   5      0        180        1   140
#>  [90,]  53   7      1          0        0   199
#>  [91,]  54   6      1          3        0   129
#>  [92,]  50   2      0          5        1   106
#>  [93,]  50  14      1         13        0   170
#>  [94,]  53   8      1          7        0   160
#>  [95,]  48   3      1          2        0   150
#>  [96,]  51  25      1          1        0   202
#>  [97,]  53   4      0          4        0   140
#>  [98,]  48   6      0        180        0   160
#>  [99,]  48  11      1         10        0   120
#> [100,]  53   4      1          0        1   156
#> [101,]  54   9      1          0        1   138
#> [102,]  49  16      0         16        0   125
#> [103,]  55   3      1          1        0   150
#> [104,]  54  23      1         10        0   131
#> [105,]  55   6      1          2        1   114
#> [106,]  55   4      1          2        0   150
#> [107,]  51  13      1         11        0   145
#> [108,]  50   5      1          4        1   150
#> [109,]  54   4      1          0        1   121
#> [110,]  49   6      1          0        1   130
#> [111,]  49   1      0          1        1   110
#> [112,]  50   7      1          1        0   156
#> [113,]  53   8      1          0        1   130
#> [114,]  50   7      1          0        1   127
#> [115,]  52   5      0        175        1   117
#> [116,]  54   1      0        180        0   162
#> [117,]  54   7      1          0        1   100
#> [118,]  56   3      0        180        1   193
#> [119,]  56   2      0        180        0   132
#> [120,]  55   5      1          4        1   120
#> [121,]  53  18      1          9        1   150
#> [122,]  54   3      0        180        1   180
#> [123,]  53  10      1          9        0   172
#> [124,]  52  16      1         14        0   170
#> [125,]  53  15      0         15        1    90
#> [126,]  53   4      0        180        1   150
#> [127,]  55   6      1          5        1   138
#> [128,]  55   2      0        134        1   140
#> [129,]  54   7      1          2        0   129
#> [130,]  57   1      0        180        1   156
#> [131,]  57   1      0          1        1   100
#> [132,]  56   4      1          0        1   140
#> [133,]  52   2      0        180        0   140
#> [134,]  52  15      1         14        0   130
#> [135,]  56  14      1         11        0   130
#> [136,]  53   3      1          0        1   200
#> [137,]  57  10      0        180        1   170
#> [138,]  58   8      0          8        1   130
#> [139,]  55   3      1          1        1   156
#> [140,]  57   0      0          0        1   150
#> [141,]  53  21      1         13        1   130
#> [142,]  57   4      0        180        1   119
#> [143,]  58   6      1          0        1    90
#> [144,]  54  17      1          8        1   227
#> [145,]  55   9      1          2        1   147
#> [146,]  56   5      0          5        1   150
#> [147,]  57   4      1          2        1   185
#> [148,]  53   4      0        147        1   145
#> [149,]  53   7      1          0        1   120
#> [150,]  57  11      1         10        1   129
#> [151,]  56   4      0          4        0   164
#> [152,]  58   9      1          0        1   180
#> [153,]  55   5      1          0        0   140
#> [154,]  56   7      1          5        1   120
#> [155,]  55   2      0          2        0   106
#> [156,]  59   9      1          1        1   125
#> [157,]  57   1      0        180        0   148
#> [158,]  60  11      1          9        0   106
#> [159,]  59   3      0        180        0   120
#> [160,]  58   4      1          0        1   160
#> [161,]  57   5      0        180        1   130
#> [162,]  58  11      1          9        1   124
#> [163,]  55   5      1          0        1   160
#> [164,]  59   6      1          0        1   140
#> [165,]  59   5      0        180        1   155
#> [166,]  58  26      1          0        1   189
#> [167,]  61   9      0          9        1   160
#> [168,]  59   2      1          1        0   140
#> [169,]  58   8      0        161        1   140
#> [170,]  58  14      1          6        0   190
#> [171,]  61   3      1          2        1   102
#> [172,]  61  20      1         13        0   130
#> [173,]  57  13      1         10        0   110
#> [174,]  57   2      1          0        1   116
#> [175,]  58  10      0         10        1   150
#> [176,]  57   4      1          3        0   138
#> [177,]  61   3      0         17        0   143
#> [178,]  56  14      0         45        0   130
#> [179,]  57   3      1          2        0   120
#> [180,]  58  19      1         13        1   140
#> [181,]  56  13      1          6        1   158
#> [182,]  59   9      1          0        1    80
#> [183,]  58  11      0        172        1   135
#> [184,]  60  12      1          0        1   114
#> [185,]  55   9      1          7        1   135
#> [186,]  61   4      1          0        1   115
#> [187,]  56   8      1          8        0   120
#> [188,]  61  13      1         12        1   130
#> [189,]  59  11      1          8        1   190
#> [190,]  57   1      0          1        0   126
#> [191,]  57  15      1         13        1   110
#> [192,]  59   5      1          2        0   182
#> [193,]  58   5      1          1        1   135
#> [194,]  61  13      0         13        0   210
#> [195,]  58   8      1          5        0   152
#> [196,]  62   7      1          2        1   180
#> [197,]  57   3      1          0        0   100
#> [198,]  61  18      0        170        0   140
#> [199,]  58   8      1          3        1   150
#> [200,]  59  13      1          2        0   198
#> [201,]  62   4      1          0        0   160
#> [202,]  58   3      1          0        1   146
#> [203,]  62   4      1          3        0   173
#> [204,]  59  16      1          9        1   133
#> [205,]  61  13      0         13        0   120
#> [206,]  57  18      1          9        1    93
#> [207,]  61   5      0          5        1   160
#> [208,]  58  11      1          9        0   179
#> [209,]  62  17      1         10        1   180
#> [210,]  62   1      1          0        1   172
#> [211,]  58   7      0        180        1   150
#> [212,]  63   3      1          1        0   180
#> [213,]  63   1      0        180        1   130
#> [214,]  61   7      0        180        0   135
#> [215,]  63   4      1          3        0   222
#> [216,]  62   3      0        180        1   105
#> [217,]  63  15      1         10        1   126
#> [218,]  64   4      0        180        0   130
#> [219,]  60  18      1         13        0   132
#> [220,]  59   8      0        180        1   140
#> [221,]  61   9      1          9        1   150
#> [222,]  62   7      0          7        0   150
#> [223,]  59   1      0         22        1   162
#> [224,]  58   2      0        180        0   127
#> [225,]  59   5      1          1        0   148
#> [226,]  60   7      1          1        1    90
#> [227,]  65  13      0        180        1   100
#> [228,]  63   1      0          1        0   162
#> [229,]  62   6      0        180        0   170
#> [230,]  59   4      0          4        0   149
#> [231,]  62   6      0          6        0   120
#> [232,]  63  12      1         10        0   200
#> [233,]  59  10      0        180        1   130
#> [234,]  60   8      0         17        1   130
#> [235,]  61   6      1          1        1   117
#> [236,]  64  12      1         11        0   160
#> [237,]  66   1      1          0        1   120
#> [238,]  64   6      1          0        1   140
#> [239,]  63  10      1          0        1   148
#> [240,]  65  36      1         11        0   140
#> [241,]  63   4      1          3        0   162
#> [242,]  66   3      1          1        0   127
#> [243,]  61  10      1          2        1   194
#> [244,]  64  32      1          9        1   160
#> [245,]  63  12      1          9        0   114
#> [246,]  66   5      1          0        1   110
#> [247,]  65   8      1          0        0   168
#> [248,]  65  10      1          8        1   120
#> [249,]  64   0      0          0        1    90
#> [250,]  64  21      1         10        0   190
#> [251,]  61  12      1         11        0   154
#> [252,]  64   9      0        180        0   150
#> [253,]  61   4      0        180        1   113
#> [254,]  65   3      0        180        1   190
#> [255,]  64   7      0        180        1   120
#> [256,]  62   3      1          1        1   199
#> [257,]  65   6      0          9        0   112
#> [258,]  65   3      1          0        1    80
#> [259,]  62  13      1         11        0   180
#> [260,]  67  11      0         11        1   100
#> [261,]  64   2      0          2        0   201
#> [262,]  66  18      1          5        0   142
#> [263,]  66  16      1         11        1   169
#> [264,]  62   9      0        180        0   145
#> [265,]  61  14      1          5        0   140
#> [266,]  61  15      1         10        0   130
#> [267,]  63   3      1          2        0   120
#> [268,]  64  19      1          8        1   160
#> [269,]  67   6      0        180        1   170
#> [270,]  65  15      1         11        1   160
#> [271,]  68   5      1          4        1   150
#> [272,]  64  13      1         12        1   150
#> [273,]  64   6      1          0        1   125
#> [274,]  66   7      1          0        1   115
#> [275,]  66  13      1          0        0   118
#> [276,]  64  14      1         13        1   150
#> [277,]  65   3      0          3        0   105
#> [278,]  67   4      1          3        0   130
#> [279,]  65   2      1          1        1   170
#> [280,]  68   1      0        180        1   166
#> [281,]  64  10      1          9        1   110
#> [282,]  67   8      1          1        1   130
#> [283,]  68   5      0          5        1    90
#> [284,]  63  10      0         16        1   160
#> [285,]  66  14      0        180        0   130
#> [286,]  64   1      0          1        1   120
#> [287,]  65  17      1         14        1   100
#> [288,]  63   8      1          1        1   162
#> [289,]  65  18      1          3        0   120
#> [290,]  63   1      1          0        1   155
#> [291,]  67  11      0         11        0   150
#> [292,]  68  14      0         79        0   172
#> [293,]  66  12      1         10        1   150
#> [294,]  65  15      1         12        1   150
#> [295,]  66  11      1          0        0   100
#> [296,]  65   4      1          2        1   145
#> [297,]  63   2      0        180        0   150
#> [298,]  65  11      1          6        0   130
#> [299,]  69  21      1         10        0   180
#> [300,]  69   6      0        180        1   100
#> [301,]  66   9      1          8        0   130
#> [302,]  63   8      0        180        1   120
#> [303,]  68  14      1         13        1   140
#> [304,]  65   8      1          0        1    90
#> [305,]  66   3      0          3        1   138
#> [306,]  67   1      0        180        1   160
#> [307,]  68  10      1         10        1   150
#> [308,]  65   1      1          0        0   133
#> [309,]  67   7      1          4        1   130
#> [310,]  65  10      1          1        1   148
#> [311,]  65   4      1          1        0   130
#> [312,]  66   4      0        180        1   130
#> [313,]  70  15      1         12        1   132
#> [314,]  64  11      0         11        0   125
#> [315,]  64   4      0        180        1   140
#> [316,]  66   7      1          5        1   131
#> [317,]  66   4      0        180        0   177
#> [318,]  65  13      1         12        1   130
#> [319,]  64  21      0         21        1   155
#> [320,]  66   6      0        180        0   140
#> [321,]  68  18      1          0        1   160
#> [322,]  68   4      0          4        1   190
#> [323,]  71   3      0          5        0   112
#> [324,]  70   7      1          0        1   190
#> [325,]  68   7      0        150        0   210
#> [326,]  71  20      1          0        1   160
#> [327,]  66   9      1          3        1   151
#> [328,]  66   1      1          1        1   165
#> [329,]  69   8      0        180        1   153
#> [330,]  70  14      0        171        0   166
#> [331,]  66   4      0        180        0   130
#> [332,]  67  10      1          9        0   200
#> [333,]  67   6      1          4        0   130
#> [334,]  68  18      1         14        1   170
#> [335,]  69   0      0          0        1   148
#> [336,]  69   3      1          2        0   151
#> [337,]  67  14      1         13        0   130
#> [338,]  69   8      0        180        1   180
#> [339,]  71   7      0          7        0   230
#> [340,]  66   2      0          2        1   228
#> [341,]  71   6      0         45        1   158
#> [342,]  69   5      0          5        1   142
#> [343,]  71   3      0        103        0   133
#> [344,]  69   3      0          3        1   130
#> [345,]  67   1      0         36        1   104
#> [346,]  69   8      1          5        1   195
#> [347,]  72   3      1          0        1   132
#> [348,]  72   7      0          7        1   110
#> [349,]  69   8      1          7        1   108
#> [350,]  67   3      0        180        0   110
#> [351,]  66   2      1          1        0   123
#> [352,]  68  18      0         18        1   100
#> [353,]  67  14      0        172        1   140
#> [354,]  69  11      1          0        1   120
#> [355,]  66   2      0        180        0   130
#> [356,]  69   4      1          3        0   132
#> [357,]  67  13      1          9        0   130
#> [358,]  70   3      0        123        0   130
#> [359,]  70   9      0        180        1   142
#> [360,]  72   5      1          4        0   170
#> [361,]  67  22      1          1        1   140
#> [362,]  67  12      1          8        0   120
#> [363,]  69   1      0          1        1   110
#> [364,]  67   1      0          1        1    60
#> [365,]  69   5      0         76        0   120
#> [366,]  66  24      1         13        0   130
#> [367,]  70  35      1          0        1   105
#> [368,]  72  30      1          0        1   145
#> [369,]  70   7      0          7        0   102
#> [370,]  68   7      1          2        0   135
#> [371,]  71   6      0          9        0   120
#> [372,]  70  11      0        180        1   210
#> [373,]  72  19      1          8        0   120
#> [374,]  72  12      1         10        0   170
#> [375,]  67   9      0        180        0   158
#> [376,]  73  13      0        152        1   130
#> [377,]  70   5      0        180        0   150
#> [378,]  72   6      1          5        0   115
#> [379,]  70   3      0        180        0   121
#> [380,]  69   3      0        180        0   220
#> [381,]  71   3      1          2        0   150
#> [382,]  68   4      1          3        0   210
#> [383,]  72   5      0         28        0   120
#> [384,]  71   5      0        180        0   191
#> [385,]  73   6      0        180        1   117
#> [386,]  69   8      1          1        0   164
#> [387,]  72  16      1          1        1   130
#> [388,]  73   6      1          0        1   270
#> [389,]  71   2      1          0        1   180
#> [390,]  68  15      1         13        1   130
#> [391,]  70  13      1          9        0   100
#> [392,]  72   6      0        180        1   130
#> [393,]  73   0      0        180        1   161
#> [394,]  74   8      1          0        1    85
#> [395,]  73   4      0        180        1   154
#> [396,]  69   2      1          0        1   110
#> [397,]  71   3      1          1        0   150
#> [398,]  71  15      1         11        0   165
#> [399,]  71  20      1         10        0   140
#> [400,]  74   0      1          0        1    90
#> [401,]  73   3      1          0        1   136
#> [402,]  70   5      1          0        1   190
#> [403,]  71  17      1         11        0   160
#> [404,]  71   8      1          7        0   149
#> [405,]  73  10      1          8        0   106
#> [406,]  74   4      0          4        0   120
#> [407,]  70   3      0        180        1   154
#> [408,]  73   6      0        180        0   110
#> [409,]  71   7      1          2        0   143
#> [410,]  72   8      1          0        1   140
#> [411,]  73  17      1         11        0   140
#> [412,]  71  13      1          8        0   121
#> [413,]  69   2      1          1        1    80
#> [414,]  70   4      1          0        1   140
#> [415,]  71  14      1         13        1   170
#> [416,]  72  10      1          8        1   153
#> [417,]  69   7      0        180        1   144
#> [418,]  72  15      1         13        0   156
#> [419,]  70   8      0          8        0   120
#> [420,]  75   1      0          1        0   133
#> [421,]  75   2      1          1        0   145
#> [422,]  73  10      1          9        1   146
#> [423,]  74  15      1          9        1   179
#> [424,]  73   1      0          1        1    80
#> [425,]  75   9      1          7        0   140
#> [426,]  71   4      0          4        0   134
#> [427,]  72  15      1         12        1   120
#> [428,]  73  10      1          8        0   120
#> [429,]  73  10      0        180        0   162
#> [430,]  70   3      0          3        0   150
#> [431,]  73   5      1          3        1   112
#> [432,]  73  12      1         12        1   140
#> [433,]  72   2      0        180        0   120
#> [434,]  71   3      1          0        0   144
#> [435,]  73   5      0        180        0   126
#> [436,]  74  34      1          8        1   233
#> [437,]  71  32      1         12        1   107
#> [438,]  76   5      0          5        1   130
#> [439,]  77  11      0         11        1   150
#> [440,]  77   4      0          4        0   185
#> [441,]  75   3      1          1        0   180
#> [442,]  71  16      0        180        0   140
#> [443,]  74   7      0        180        1   150
#> [444,]  74   3      0          3        1   128
#> [445,]  76   8      1          0        1   141
#> [446,]  74  19      1          4        1   200
#> [447,]  73   6      0          6        1   114
#> [448,]  74   2      0        180        0   190
#> [449,]  72   4      1          3        0   160
#> [450,]  73   4      1          3        1   125
#> [451,]  75   4      1          0        1   122
#> [452,]  75   7      0          7        0   190
#> [453,]  73  13      1         11        0   195
#> [454,]  76  13      1          8        1   148
#> [455,]  75   4      1          2        1   188
#> [456,]  74   6      0        180        0   160
#> [457,]  76   4      0          4        1   155
#> [458,]  73   1      0         52        1   105
#> [459,]  73   0      0        180        0   156
#> [460,]  72   5      0        180        0   120
#> [461,]  76   5      0        180        0   185
#> [462,]  74  10      1          0        1   135
#> [463,]  73  33      1         12        1   175
#> [464,]  77   5      1          0        0   123
#> [465,]  77  12      1          9        1   100
#> [466,]  73  10      1          9        0   146
#> [467,]  77  12      0        180        0   130
#> [468,]  78   5      1          0        1   170
#> [469,]  73   7      1          0        0   174
#> [470,]  76  29      0         47        0    90
#> [471,]  73  11      1          2        1   110
#> [472,]  74   2      0        180        0   100
#> [473,]  78   7      0          7        1   133
#> [474,]  74  15      0        180        1   172
#> [475,]  78   8      1          6        1   110
#> [476,]  74   7      0          7        0   161
#> [477,]  76  13      1          1        1   170
#> [478,]  78  32      1          9        1   198
#> [479,]  79   6      0        180        0   170
#> [480,]  78   0      0        180        1   212
#> [481,]  75  12      1          1        1   120
#> [482,]  78  15      0        180        1   270
#> [483,]  80   8      0          8        1   120
#> [484,]  79   4      0         80        0   145
#> [485,]  78  12      1          9        0   150
#> [486,]  75   4      1          0        0   212
#> [487,]  77   2      1          0        1   143
#> [488,]  78  10      0        180        1   130
#> [489,]  76  11      1          0        0   120
#> [490,]  75  11      1          4        0   162
#> [491,]  76   7      0         29        1   150
#> [492,]  79   8      0         32        1   120
#> [493,]  80   9      0         23        1   128
#> [494,]  80   6      0          6        1   150
#> [495,]  76   3      1          0        1   140
#> [496,]  79   2      1          0        1   121
#> [497,]  78  14      1          0        1   140
#> [498,]  78  11      1          8        1   118
#> [499,]  79   4      0          4        1   125
#> [500,]  76  10      1          8        0   180
#> [501,]  76  12      1         10        1   127
#> [502,]  77   6      0          6        1   107
#> [503,]  80   3      1          0        1   120
#> [504,]  76   1      0          1        1   140
#> [505,]  76   1      0          1        1    90
#> [506,]  78   7      1          0        1   110
#> [507,]  77   7      0        180        1   170
#> [508,]  77   6      0          6        1   144
#> [509,]  81   1      0        180        0   120
#> [510,]  82   5      0          8        1   120
#> [511,]  80  40      1          0        1   138
#> [512,]  78   4      0         59        1   112
#> [513,]  76   7      0        161        0   151
#> [514,]  80  15      1          0        1    90
#> [515,]  79  28      0        164        0   100
#> [516,]  80   9      0        118        1   186
#> [517,]  78  32      0        180        1   130
#> [518,]  79   1      0         37        1   140
#> [519,]  81   3      0        180        0   184
#> [520,]  81   2      0        175        0   172
#> [521,]  77  13      1          0        1   190
#> [522,]  78  15      0         15        0   165
#> [523,]  78  20      1          0        1   109
#> [524,]  80   1      0          1        0   100
#> [525,]  78   3      1          1        1   152
#> [526,]  77  10      1          8        1   130
#> [527,]  82   3      1          1        1   144
#> [528,]  80   2      1          1        0   168
#> [529,]  79   6      0          6        0   152
#> [530,]  80   6      1          0        1   119
#> [531,]  78   2      0        180        0   148
#> [532,]  80   5      0          5        1   130
#> [533,]  82   1      1          0        1    82
#> [534,]  79  10      0        180        1   150
#> [535,]  81   1      0        108        0   129
#> [536,]  78  12      0        180        0   134
#> [537,]  79   1      0        125        0   193
#> [538,]  82  21      1          2        0   155
#> [539,]  84  22      1         10        0   180
#> [540,]  80   6      0          6        1   110
#> [541,]  82   5      0        180        0   110
#> [542,]  83   5      0        180        0   148
#> [543,]  79   7      1          6        0   130
#> [544,]  81   5      0        177        0    41
#> [545,]  78   9      1          4        1   120
#> [546,]  82   8      1          1        0   128
#> [547,]  80   7      1          0        1   146
#> [548,]  84   5      1          1        1    85
#> [549,]  81  20      1          9        0   170
#> [550,]  83   8      0          8        0   115
#> [551,]  81  16      0         16        1   110
#> [552,]  80   6      1          0        1   150
#> [553,]  80  11      1          8        0   110
#> [554,]  81   8      0        180        0   146
#> [555,]  79   7      0        177        0   197
#> [556,]  79   0      1          0        1    96
#> [557,]  85   4      0        180        0    90
#> [558,]  81   2      1          1        0   198
#> [559,]  82   6      0        128        1   100
#> [560,]  84   4      0        167        0   198
#> [561,]  80   3      1          1        1   230
#> [562,]  82  23      1          0        0   110
#> [563,]  84   4      0          4        1    85
#> [564,]  84   1      0         38        1   205
#> [565,]  83   3      0        180        0   174
#> [566,]  81   4      0         90        1   138
#> [567,]  85   3      1          2        1   160
#> [568,]  80  13      1          8        1   140
#> [569,]  79   4      0          4        1    60
#> [570,]  80   6      0         71        1   189
#> [571,]  82  19      0         19        0   120
#> [572,]  80  30      1         13        0   220
#> [573,]  83   9      0        180        0   198
#> [574,]  79  14      1          0        0   110
#> [575,]  83   3      0        114        0    98
#> [576,]  81  14      1         12        1   128
#> [577,]  83   2      0        154        0   130
#> [578,]  82   0      0          2        1   100
#> [579,]  85   9      1          6        1   160
#> [580,]  84  15      1         13        1   110
#> [581,]  82  16      1          8        0   103
#> [582,]  82   5      1          0        1   146
#> [583,]  81   4      0          4        0   160
#> [584,]  81  19      1         14        0   120
#> [585,]  82  15      1          0        0   183
#> [586,]  83   7      0        126        0   135
#> [587,]  86   8      0          8        1   132
#> [588,]  81  16      1          9        0   180
#> [589,]  84   6      0        165        0   145
#> [590,]  86   3      0          3        1   140
#> [591,]  82   9      0        180        1   134
#> [592,]  84   3      0        180        1   120
#> [593,]  81  13      0        180        0   152
#> [594,]  85   3      0          3        1   118
#> [595,]  81   2      1          0        1   118
#> [596,]  83   9      0        180        1   149
#> [597,]  82   1      0        180        1   193
#> [598,]  87   2      0          5        1   137
#> [599,]  86  12      1          0        1   132
#> [600,]  84  16      0         70        1   150
#> [601,]  83  19      0         43        0   150
#> [602,]  83  10      1          0        1   190
#> [603,]  86   2      0        180        1   169
#> [604,]  84   3      0          3        1   121
#> [605,]  84   7      1          2        0   148
#> [606,]  84   3      0        180        1   170
#> [607,]  86   4      0         38        1   122
#> [608,]  82   4      0          4        0   130
#> [609,]  86  13      0        177        0   163
#> [610,]  85   3      0          3        1   113
#> [611,]  86   6      0          6        1   117
#> [612,]  84  13      0         62        1   100
#> [613,]  86   6      1          1        0   112
#> [614,]  88   4      0          4        0   100
#> [615,]  88   4      0          4        1   115
#> [616,]  85  22      0         22        1   184
#> [617,]  83   9      0         65        1   150
#> [618,]  86   9      1          7        1   142
#> [619,]  87   2      0        180        1   130
#> [620,]  86   6      0         46        0   173
#> [621,]  86  15      1          8        1   109
#> [622,]  88   4      0          4        0    86
#> [623,]  89   4      0          4        1   153
#> [624,]  89   5      0        119        1   140
#> [625,]  87   6      0        180        1   110
#> [626,]  87   1      0          1        0   170
#> [627,]  85   8      0          8        1   136
#> [628,]  84   2      0        110        1   174
#> [629,]  87  29      0         29        1    97
#> [630,]  87  15      1          9        1   138
#> [631,]  84   0      0        180        1   136
#> [632,]  89  10      0         46        1   170
#> [633,]  90  14      0         14        1   100
#> [634,]  86   4      0        180        1   145
#> [635,]  91   8      0          8        0   100
#> [636,]  87   2      0        180        0   160
#> [637,]  87   6      1          0        0   125
#> [638,]  91  10      0        145        0   135
#> [639,]  86   3      1          0        1    80
#> [640,]  88   7      0         24        0   119
#> [641,]  87   6      0        126        1   168
#> [642,]  86  10      0        180        1   137
#> [643,]  86   9      1          7        0   130
#> [644,]  87   5      0         36        1   150
#> [645,]  90   5      1          0        1   125
#> [646,]  91   3      0         33        1   137
#> [647,]  88   5      0        158        0   100
#> [648,]  87   7      0         74        1   105
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
#> [660,]  92   4      0         76        1   149
#> [661,]  91   1      0        180        0   158
#> [662,]  90  16      0         16        1   106
#> [663,]  90   3      0         67        0   162
#> [664,]  95   8      1          5        1   150
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  93   4      0        180        1   135
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#>  [11] 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+   5.0+   2.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 150.0  180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [51] 161.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+
#>  [61] 180.0+  10.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0    1.0 
#>  [71] 179.0+ 180.0+ 179.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+  36.0  180.0+   4.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 166.0+
#> [101] 180.0+  16.0+ 180.0+ 152.0+   6.0+ 180.0+  13.0+ 171.0+ 180.0+   6.0+
#> [111]   1.0  180.0+ 180.0+ 180.0+ 175.0+ 180.0+   7.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+ 180.0+  16.0   15.0+ 180.0+ 180.0+ 134.0+ 180.0+ 180.0+
#> [131]   1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+   0.5 
#> [141] 180.0+ 180.0+ 180.0+ 171.0+  15.0    5.0+   4.0+ 147.0+ 180.0+ 180.0+
#> [151]   4.0+   9.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+ 180.0+ 161.0+ 171.0+
#> [171]   3.0  180.0+ 180.0+ 180.0+  10.0+ 180.0+  17.0   45.0    3.0+  19.0 
#> [181] 180.0+   9.0+ 172.0+ 172.0+  24.0  180.0+   8.0  180.0+ 180.0+   1.0+
#> [191]  15.0  180.0+ 180.0+  13.0+   8.0+ 180.0+ 180.0+ 170.0  180.0+ 180.0+
#> [201] 180.0+   3.0+ 180.0+ 180.0+  13.0+  18.0    5.0+ 180.0+ 180.0+   1.0 
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+   7.0+  22.0  180.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+   4.0+
#> [231]   6.0+ 180.0+ 180.0+  17.0  180.0+  12.0  180.0+ 180.0+ 180.0+  36.0 
#> [241] 180.0+   3.0+  88.0  180.0+  12.0  180.0+ 180.0+ 180.0+   0.5  180.0+
#> [251]  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0    3.0  180.0+  11.0+
#> [261]   2.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+ 103.0  180.0+ 180.0+
#> [271]   5.0+  13.0  180.0+ 179.0+ 166.0+  14.0+   3.0  180.0+ 175.0+ 180.0+
#> [281] 180.0+   8.0    5.0   16.0  180.0+   1.0  180.0+ 180.0+ 123.0+   1.0+
#> [291]  11.0+  79.0   80.0   15.0+ 180.0+   4.0+ 180.0+ 180.0+ 174.0+ 180.0+
#> [301] 180.0+ 180.0+ 180.0+   8.0+   3.0  180.0+  10.0  180.0+ 180.0+ 180.0+
#> [311] 180.0+ 180.0+ 180.0+  11.0+ 180.0+   7.0+ 180.0+ 180.0+  21.0+ 180.0+
#> [321]  18.0+   4.0    5.0    7.0+ 150.0  180.0+ 180.0+   1.0  180.0+ 171.0 
#> [331] 180.0+ 174.0+   6.0  180.0+   0.5  180.0+ 180.0+ 180.0+   7.0+   2.0 
#> [341]  45.0    5.0+ 103.0    3.0+  36.0  180.0+ 180.0+   7.0    8.0+ 180.0+
#> [351]   2.0+  18.0  172.0+ 180.0+ 180.0+ 180.0+  13.0+ 123.0  180.0+ 180.0+
#> [361]  51.0  180.0+   1.0    1.0   76.0  180.0+ 180.0+ 162.0    7.0+   7.0+
#> [371]   9.0  180.0+ 180.0+  12.0  180.0+ 152.0  180.0+ 180.0+ 180.0+ 180.0+
#> [381] 180.0+ 180.0+  28.0  180.0+ 180.0+ 180.0+  16.0+   6.0  180.0+  15.0 
#> [391]  13.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0    0.5 
#> [401] 180.0+ 180.0+ 180.0+   8.0   87.0    4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [411] 180.0+ 175.0    2.0  180.0+  14.0+  10.0+ 180.0+ 180.0+   8.0+   1.0 
#> [421] 180.0+ 180.0+ 180.0+   1.0  180.0+   4.0+ 180.0+  10.0  180.0+   3.0+
#> [431]   5.0   12.0  180.0+ 180.0+ 180.0+  34.0  177.0+   5.0   11.0+   4.0+
#> [441] 180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+
#> [451]   4.0    7.0  180.0+ 180.0+  46.0  180.0+   4.0   52.0  180.0+ 180.0+
#> [461] 180.0+ 180.0+  33.0    5.0  180.0+ 180.0+ 180.0+ 180.0+   7.0+  47.0 
#> [471]  11.0  180.0+   7.0  180.0+   8.0+   7.0  180.0+  32.0  180.0+ 180.0+
#> [481]  12.0  180.0+   8.0   80.0  180.0+   4.0+   2.0  180.0+  11.0  152.0+
#> [491]  29.0   32.0   23.0    6.0    3.0+ 180.0+ 180.0+  11.0    4.0   10.0+
#> [501] 180.0+   6.0    3.0+   1.0    1.0   43.0  180.0+   6.0  180.0+   8.0 
#> [511]  40.0   59.0  161.0  180.0+ 164.0  118.0  180.0+  37.0  180.0+ 175.0+
#> [521]  22.0   15.0+  20.0+   1.0    3.0+  10.0  180.0+  10.0    6.0+   6.0 
#> [531] 180.0+   5.0    1.0  180.0+ 108.0  180.0+ 125.0  180.0+ 180.0+   6.0 
#> [541] 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0    8.0+
#> [551]  16.0  180.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+ 180.0+ 128.0  167.0 
#> [561]   3.0+  62.0    4.0   38.0  180.0+  90.0  180.0+ 180.0+   4.0   71.0 
#> [571]  19.0   30.0  180.0+ 180.0+ 114.0  180.0+ 154.0    2.0  180.0+ 180.0+
#> [581]  16.0+   5.0+   4.0+ 180.0+  83.0  126.0    8.0  180.0+ 165.0    3.0 
#> [591] 180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+  70.0 
#> [601]  43.0  180.0+ 180.0+   3.0  180.0+ 180.0+  38.0    4.0  177.0    3.0+
#> [611]   6.0+  62.0    6.0+   4.0+   4.0   22.0   65.0   11.0  180.0+  46.0 
#> [621] 180.0+   4.0    4.0  119.0  180.0+   1.0+   8.0  110.0   29.0  180.0+
#> [631] 180.0+  46.0   14.0  180.0+   8.0  180.0+  25.0  145.0    3.0   24.0 
#> [641] 126.0  180.0+ 180.0+  36.0   89.0   33.0  158.0   74.0  180.0+ 168.0 
#> [651]  52.0    7.0    4.0    0.5  180.0+   4.0  180.0+  50.0    1.0+  76.0 
#> [661] 180.0+  16.0   67.0    8.0   53.0    7.0+   0.5   69.0  180.0+   3.0 
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
#>   0.8188225 
```
