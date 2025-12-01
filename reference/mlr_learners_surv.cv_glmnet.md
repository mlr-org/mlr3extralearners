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
#> min 0.00332    44   2.638 0.2057       6
#> 1se 0.08624     9   2.843 0.1913       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  33   2      0          2        0   150
#>   [2,]  35   5      1          2        0   172
#>   [3,]  35  10      1          9        0   106
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      1          1        1   112
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38   2      0        115        0   150
#>   [8,]  36   1      0        180        1   155
#>   [9,]  35   0      0        180        1   119
#>  [10,]  38  12      1          8        1   120
#>  [11,]  36   5      1          0        1   115
#>  [12,]  33   6      1          1        1   115
#>  [13,]  38  16      1         10        0   160
#>  [14,]  42   3      1          1        1   130
#>  [15,]  40   2      1          1        1   148
#>  [16,]  42   2      0          2        0   140
#>  [17,]  40   6      0        180        1   138
#>  [18,]  40  11      1         10        1   120
#>  [19,]  43   3      1          0        1   100
#>  [20,]  43   4      1          0        1   130
#>  [21,]  40   3      1          1        0   170
#>  [22,]  42  12      1         10        1   170
#>  [23,]  43   2      1          1        1   116
#>  [24,]  44   5      1          1        0   170
#>  [25,]  41  10      1          8        0   150
#>  [26,]  44   3      0        180        0   141
#>  [27,]  44   2      1          1        1   150
#>  [28,]  45   2      0        180        1   140
#>  [29,]  46  15      0        180        0   120
#>  [30,]  46   2      1          1        0   126
#>  [31,]  47   4      1          3        0   118
#>  [32,]  48  15      0        180        1   160
#>  [33,]  45   3      0        150        0   130
#>  [34,]  44   3      1          0        1   180
#>  [35,]  46   7      1          2        0   166
#>  [36,]  43  10      0        180        0   185
#>  [37,]  46  13      1         10        0   100
#>  [38,]  44   0      1          0        1    96
#>  [39,]  47   4      1          3        1   160
#>  [40,]  43   3      1          0        1   124
#>  [41,]  45   8      1          0        1   117
#>  [42,]  46   2      1          1        1   122
#>  [43,]  46   6      1          0        1   100
#>  [44,]  44   4      1          0        1   114
#>  [45,]  47   2      0        180        0   108
#>  [46,]  44   9      1          8        1   135
#>  [47,]  45   5      0        180        1   190
#>  [48,]  44   2      0        180        0   142
#>  [49,]  46  15      0        180        1   120
#>  [50,]  45   9      1          0        1   145
#>  [51,]  48   3      0        180        0   154
#>  [52,]  48  12      1         11        0   200
#>  [53,]  47   9      1          6        0   170
#>  [54,]  46   3      1          0        1   119
#>  [55,]  49   4      0        180        0   117
#>  [56,]  50   4      1          1        0   125
#>  [57,]  46   3      1          1        1   140
#>  [58,]  46   9      1          9        1   122
#>  [59,]  50   7      0        180        1   110
#>  [60,]  49   2      0          2        0   105
#>  [61,]  51   1      0          1        1   145
#>  [62,]  49  23      0        179        1   112
#>  [63,]  52   2      0        180        1   170
#>  [64,]  50   4      0          4        1   100
#>  [65,]  51   3      1          2        0   113
#>  [66,]  50   1      1          0        0   150
#>  [67,]  50   9      0        180        0   130
#>  [68,]  49   7      1          4        1    90
#>  [69,]  47   6      0        180        1   162
#>  [70,]  52   2      0        180        0   155
#>  [71,]  46   1      1          1        0   145
#>  [72,]  50   4      1          1        0   150
#>  [73,]  48   7      1          0        1   110
#>  [74,]  47   2      1          1        0   110
#>  [75,]  52   4      1          4        0   152
#>  [76,]  49   9      1          3        0   102
#>  [77,]  53   5      0        180        1   140
#>  [78,]  53   7      1          0        0   199
#>  [79,]  54   6      1          3        0   129
#>  [80,]  50   2      0          5        1   106
#>  [81,]  50  10      1          6        0   122
#>  [82,]  48   3      1          2        0   150
#>  [83,]  51  25      1          1        0   202
#>  [84,]  49   5      1          2        1   150
#>  [85,]  53   4      0          4        0   140
#>  [86,]  52  14      1          7        1   200
#>  [87,]  53   4      1          0        1   156
#>  [88,]  55   3      1          1        0   150
#>  [89,]  54  23      1         10        0   131
#>  [90,]  55   6      1          2        1   114
#>  [91,]  54   9      1          1        0   130
#>  [92,]  55   4      1          2        0   150
#>  [93,]  52   4      0        180        1   180
#>  [94,]  51  13      1         11        0   145
#>  [95,]  50   5      1          4        1   150
#>  [96,]  52   4      0        180        0   183
#>  [97,]  49   1      0          1        1   110
#>  [98,]  50   7      1          1        0   156
#>  [99,]  50   7      1          0        1   127
#> [100,]  56   4      1          1        1   130
#> [101,]  55   2      0          2        0   145
#> [102,]  54   7      1          0        1   100
#> [103,]  56   3      0        180        1   193
#> [104,]  56   2      0        180        0   132
#> [105,]  52   8      0        180        0   119
#> [106,]  53  18      1          9        1   150
#> [107,]  54   3      0        180        1   180
#> [108,]  52  16      0         16        0   152
#> [109,]  52  16      1         14        0   170
#> [110,]  53  15      0         15        1    90
#> [111,]  53   4      0        180        1   150
#> [112,]  55   6      1          5        1   138
#> [113,]  55   2      0        134        1   140
#> [114,]  54   3      0        180        0   128
#> [115,]  56   3      0          8        1   139
#> [116,]  54   7      1          2        0   129
#> [117,]  54   2      1          1        1   176
#> [118,]  57   5      1          3        1   138
#> [119,]  57   1      0        180        1   156
#> [120,]  57   1      0          1        1   100
#> [121,]  56   4      1          0        1   140
#> [122,]  52   2      0        180        0   140
#> [123,]  55  11      1          7        0   104
#> [124,]  52  15      1         14        0   130
#> [125,]  57  10      0        180        1   170
#> [126,]  58   8      0          8        1   130
#> [127,]  54   5      0        180        1   108
#> [128,]  55   3      1          1        1   156
#> [129,]  53  21      1         13        1   130
#> [130,]  59   3      1          1        0   172
#> [131,]  57   4      0        180        1   119
#> [132,]  58   6      1          0        1    90
#> [133,]  54  17      1          8        1   227
#> [134,]  54  23      1          8        0   120
#> [135,]  53   7      1          0        1   120
#> [136,]  57  11      1         10        1   129
#> [137,]  55   3      1          2        0   140
#> [138,]  55   5      0          5        1   131
#> [139,]  54   7      1          0        1   141
#> [140,]  56   4      0          4        0   164
#> [141,]  58   9      1          0        1   180
#> [142,]  55   5      1          0        0   140
#> [143,]  59   9      1          1        1   125
#> [144,]  60  11      1          9        0   106
#> [145,]  59   3      0        180        0   120
#> [146,]  58   4      1          0        1   160
#> [147,]  60   5      1          1        0   138
#> [148,]  57   5      0        180        1   130
#> [149,]  58  11      1          9        1   124
#> [150,]  55   5      1          0        1   160
#> [151,]  59   5      0        180        1   155
#> [152,]  59   4      1          0        1   152
#> [153,]  58  26      1          0        1   189
#> [154,]  61   9      0          9        1   160
#> [155,]  60   0      1          0        1    80
#> [156,]  58   8      0        161        1   140
#> [157,]  61   4      1          3        0   151
#> [158,]  61   9      1          8        0   150
#> [159,]  61   3      1          2        1   102
#> [160,]  58   1      0          1        1   100
#> [161,]  61  20      1         13        0   130
#> [162,]  57  13      1         10        0   110
#> [163,]  57   2      1          0        1   116
#> [164,]  57   4      1          3        0   138
#> [165,]  57  11      0        180        1   150
#> [166,]  61   3      0         17        0   143
#> [167,]  56  14      0         45        0   130
#> [168,]  57   3      1          2        0   120
#> [169,]  58  19      1         13        1   140
#> [170,]  56  13      1          6        1   158
#> [171,]  59   9      1          0        1    80
#> [172,]  55   4      1          3        1   160
#> [173,]  58  11      0        172        1   135
#> [174,]  55   9      1          7        1   135
#> [175,]  61   4      1          0        1   115
#> [176,]  56   8      1          8        0   120
#> [177,]  59  11      1          8        1   190
#> [178,]  57   1      0          1        0   126
#> [179,]  57  15      1         13        1   110
#> [180,]  58   5      1          1        1   135
#> [181,]  59  10      0        180        0   160
#> [182,]  61   8      0         77        0   120
#> [183,]  61  13      0         13        0   210
#> [184,]  62  10      1          0        1   153
#> [185,]  62   7      1          2        1   180
#> [186,]  57   3      1          0        0   100
#> [187,]  61  28      1          7        0   133
#> [188,]  58   8      1          3        1   150
#> [189,]  61   7      0          7        1   150
#> [190,]  60   7      0          7        0   147
#> [191,]  61   6      0          6        0   134
#> [192,]  59  13      1          2        0   198
#> [193,]  57  12      1          9        1   120
#> [194,]  62   4      1          0        0   160
#> [195,]  60  17      1          8        1   140
#> [196,]  62   4      1          3        0   173
#> [197,]  63   6      0         28        1   120
#> [198,]  61  13      0         13        0   120
#> [199,]  57  18      1          9        1    93
#> [200,]  62  17      1         10        1   180
#> [201,]  58   7      0        180        1   150
#> [202,]  63   3      1          1        0   180
#> [203,]  63   1      0        180        1   130
#> [204,]  61   7      0        180        0   135
#> [205,]  63  15      1         10        1   126
#> [206,]  64   4      0        180        0   130
#> [207,]  63   4      1          1        0   155
#> [208,]  60  18      1         13        0   132
#> [209,]  61   9      1          9        1   150
#> [210,]  58   9      1          9        0   110
#> [211,]  59   1      0         22        1   162
#> [212,]  58   2      0        180        0   127
#> [213,]  59   4      0        180        0   196
#> [214,]  60   7      1          5        1   141
#> [215,]  60   7      0          7        0   140
#> [216,]  59   5      1          1        0   148
#> [217,]  60   7      1          1        1    90
#> [218,]  63   1      0          1        0   162
#> [219,]  63   1      0          1        0   130
#> [220,]  61  15      1         13        0   170
#> [221,]  59   4      0          4        0   149
#> [222,]  64  10      1          9        0   160
#> [223,]  63  12      1         10        0   200
#> [224,]  59  10      0        180        1   130
#> [225,]  61   6      1          1        1   117
#> [226,]  66   1      1          0        1   120
#> [227,]  64   6      1          0        1   140
#> [228,]  63  10      1          0        1   148
#> [229,]  63  14      1          9        0   123
#> [230,]  63   4      1          3        0   162
#> [231,]  61  10      1          2        1   194
#> [232,]  63  12      1          9        0   114
#> [233,]  65   8      1          0        0   168
#> [234,]  65  10      1          8        1   120
#> [235,]  60   6      0        180        0   130
#> [236,]  64  21      1         10        0   190
#> [237,]  61  12      1         11        0   154
#> [238,]  61   4      0        180        1   113
#> [239,]  65   3      0        180        1   190
#> [240,]  63  16      1          7        1   110
#> [241,]  64   7      0        180        1   120
#> [242,]  62   3      1          1        1   199
#> [243,]  62  13      1         11        0   180
#> [244,]  67  11      0         11        1   100
#> [245,]  64   2      0          2        0   201
#> [246,]  66  16      1         11        1   169
#> [247,]  61  14      1          5        0   140
#> [248,]  61  15      1         10        0   130
#> [249,]  63   3      1          2        0   120
#> [250,]  63   2      1          0        0   140
#> [251,]  64  19      1          8        1   160
#> [252,]  65   8      1          0        1   140
#> [253,]  67   6      0        180        1   170
#> [254,]  65  15      1         11        1   160
#> [255,]  68   5      1          4        1   150
#> [256,]  64  13      1         12        1   150
#> [257,]  64   6      1          0        1   125
#> [258,]  66  13      1          0        0   118
#> [259,]  64  14      1         13        1   150
#> [260,]  65   3      0          3        0   105
#> [261,]  64   0      0          0        1   148
#> [262,]  67   4      1          3        0   130
#> [263,]  66   3      1          0        1   135
#> [264,]  68   1      0        180        1   166
#> [265,]  64  10      1          9        1   110
#> [266,]  63  10      0         16        1   160
#> [267,]  66  14      0        180        0   130
#> [268,]  63   8      1          1        1   162
#> [269,]  65  18      1          3        0   120
#> [270,]  63   1      1          0        1   155
#> [271,]  67  11      0         11        0   150
#> [272,]  68  11      0        180        0   160
#> [273,]  68  14      0         79        0   172
#> [274,]  66  12      1         10        1   150
#> [275,]  65  15      1         12        1   150
#> [276,]  66  11      1          0        0   100
#> [277,]  65   4      1          2        1   145
#> [278,]  66  15      1         13        1   160
#> [279,]  63   2      0        180        0   150
#> [280,]  69  21      1         10        0   180
#> [281,]  69   6      0        180        1   100
#> [282,]  66   9      1          8        0   130
#> [283,]  65   8      1          0        1    90
#> [284,]  67   1      0        180        1   160
#> [285,]  68  10      1         10        1   150
#> [286,]  65   1      1          0        0   133
#> [287,]  67   7      1          4        1   130
#> [288,]  63   2      1          0        0    99
#> [289,]  67   2      0        180        0   184
#> [290,]  66  19      1         12        1   150
#> [291,]  67  12      1         12        0   160
#> [292,]  69   6      0         99        1   140
#> [293,]  65   4      1          1        0   130
#> [294,]  64   4      0        179        0   160
#> [295,]  66   4      0        180        1   130
#> [296,]  64  11      0         11        0   125
#> [297,]  64   4      0        180        1   140
#> [298,]  67   2      0         18        0   131
#> [299,]  66   7      1          5        1   131
#> [300,]  68   4      1          0        1   160
#> [301,]  69   4      1          3        1   150
#> [302,]  65  13      1         12        1   130
#> [303,]  69  17      1         10        0   140
#> [304,]  69   8      0         93        0   140
#> [305,]  64  21      0         21        1   155
#> [306,]  66   6      0        180        0   140
#> [307,]  65   1      0          1        1   120
#> [308,]  68  18      1          0        1   160
#> [309,]  65   6      0        101        1   115
#> [310,]  70   7      1          0        1   190
#> [311,]  71  20      1          0        1   160
#> [312,]  67   2      0        180        0   128
#> [313,]  66   9      1          3        1   151
#> [314,]  66   1      1          1        1   165
#> [315,]  70   4      1          0        1   180
#> [316,]  67   6      1          4        0   130
#> [317,]  68  18      1         14        1   170
#> [318,]  69   0      0          0        1   148
#> [319,]  65   2      0        180        0   130
#> [320,]  68   7      1          0        1   150
#> [321,]  69   3      1          2        0   151
#> [322,]  67  14      1         13        0   130
#> [323,]  65  14      1         13        1   150
#> [324,]  71   7      0          7        0   230
#> [325,]  66   2      0          2        1   228
#> [326,]  71   6      0         45        1   158
#> [327,]  69   5      0          5        1   142
#> [328,]  69   3      0          3        1   130
#> [329,]  70  22      1         13        0   103
#> [330,]  67   1      0         36        1   104
#> [331,]  67   5      0          5        0   130
#> [332,]  68   6      0        180        0   145
#> [333,]  69   8      1          5        1   195
#> [334,]  69   6      1          4        1   174
#> [335,]  72   3      1          0        1   132
#> [336,]  72   7      0          7        1   110
#> [337,]  69   8      1          7        1   108
#> [338,]  67   3      0        180        0   110
#> [339,]  66   2      1          1        0   123
#> [340,]  69  19      0        180        0   130
#> [341,]  68  18      0         18        1   100
#> [342,]  69  11      1          0        1   120
#> [343,]  66   2      0        180        0   130
#> [344,]  67  13      1          9        0   130
#> [345,]  70   3      0        123        0   130
#> [346,]  70   9      0        180        1   142
#> [347,]  72   5      1          4        0   170
#> [348,]  67  12      1          8        0   120
#> [349,]  69   1      0          1        1   110
#> [350,]  67   1      0          1        1    60
#> [351,]  67   4      0         60        1   136
#> [352,]  69   5      0         76        0   120
#> [353,]  72  13      1         11        1   195
#> [354,]  68  10      1          8        1   160
#> [355,]  70  35      1          0        1   105
#> [356,]  72  30      1          0        1   145
#> [357,]  70   7      0          7        0   102
#> [358,]  68   7      1          2        0   135
#> [359,]  69  10      1          6        1   120
#> [360,]  70  11      0        180        1   210
#> [361,]  72  19      1          8        0   120
#> [362,]  67   8      0        180        1   170
#> [363,]  67   5      1          0        1   147
#> [364,]  73  13      0        152        1   130
#> [365,]  70   5      0        180        0   150
#> [366,]  72   2      0          2        1   100
#> [367,]  67   4      1          1        0   134
#> [368,]  72   6      1          5        0   115
#> [369,]  68  23      0        180        1   220
#> [370,]  70   3      0        180        0   121
#> [371,]  71   3      1          2        0   150
#> [372,]  68   4      1          3        0   210
#> [373,]  72   5      0         28        0   120
#> [374,]  73   6      0        180        1   117
#> [375,]  69  16      1         10        1   140
#> [376,]  69   8      1          1        0   164
#> [377,]  68   7      0        180        1   130
#> [378,]  72  16      1          1        1   130
#> [379,]  70   4      0        180        0   180
#> [380,]  69   1      1          0        0   155
#> [381,]  71   2      1          0        1   180
#> [382,]  73   7      0          7        1   140
#> [383,]  68  15      1         13        1   130
#> [384,]  70   3      0          3        1   159
#> [385,]  70  13      1          9        0   100
#> [386,]  72   6      0        180        1   130
#> [387,]  73   0      0        180        1   161
#> [388,]  74   8      1          0        1    85
#> [389,]  73   4      0        180        1   154
#> [390,]  71   3      1          1        0   150
#> [391,]  71  15      1         11        0   165
#> [392,]  74  20      0         20        1   180
#> [393,]  71  20      1         10        0   140
#> [394,]  73   3      1          0        1   136
#> [395,]  70   5      1          0        1   190
#> [396,]  71  17      1         11        0   160
#> [397,]  71   3      1          2        1   190
#> [398,]  72   5      1          3        1   160
#> [399,]  73   6      0        180        0   110
#> [400,]  72  15      1          0        1   150
#> [401,]  71   7      1          2        0   143
#> [402,]  72   8      1          0        1   140
#> [403,]  70   4      1          0        1   140
#> [404,]  71  14      1         13        1   170
#> [405,]  74   7      1          0        1   117
#> [406,]  72  10      1          8        1   153
#> [407,]  69   7      0        180        1   144
#> [408,]  70   8      0          8        0   120
#> [409,]  71  10      1          9        1   120
#> [410,]  75   1      0          1        0   133
#> [411,]  73  10      1          9        1   146
#> [412,]  74  15      1          9        1   179
#> [413,]  71   2      0         10        1   112
#> [414,]  73   1      0          1        1    80
#> [415,]  75   9      1          7        0   140
#> [416,]  75  13      1          1        1   130
#> [417,]  71  11      1          8        0   110
#> [418,]  71   4      0          4        0   134
#> [419,]  72  15      1         12        1   120
#> [420,]  72   1      1          1        0   168
#> [421,]  72   7      0         57        1   145
#> [422,]  73  10      0        180        0   162
#> [423,]  72  11      0         11        1   140
#> [424,]  70   3      0          3        0   150
#> [425,]  72   2      0        180        0   120
#> [426,]  75   1      0        180        1   140
#> [427,]  72   4      1          0        1   197
#> [428,]  73   5      0        180        0   126
#> [429,]  76   3      1          0        1   120
#> [430,]  72   3      0        180        0   160
#> [431,]  76   5      0          5        1   130
#> [432,]  77  11      0         11        1   150
#> [433,]  73  15      0         15        1   160
#> [434,]  71  16      0        180        0   140
#> [435,]  73  10      1         10        0   124
#> [436,]  74   7      0        180        1   150
#> [437,]  74   3      0          3        1   128
#> [438,]  76   1      0        180        0   114
#> [439,]  74   2      1          1        0   140
#> [440,]  76   8      1          0        1   141
#> [441,]  74  19      1          4        1   200
#> [442,]  73   6      0          6        1   114
#> [443,]  75  23      1         14        1   110
#> [444,]  74   2      0        180        0   190
#> [445,]  72   4      1          3        0   160
#> [446,]  73   4      1          3        1   125
#> [447,]  75   4      1          0        1   122
#> [448,]  75   7      0          7        0   190
#> [449,]  75   0      0          0        1   130
#> [450,]  73  13      1         11        0   195
#> [451,]  75  12      0         12        1   160
#> [452,]  75   4      1          2        1   188
#> [453,]  74   6      0        180        0   160
#> [454,]  76   4      0          4        1   155
#> [455,]  74   2      0        180        0   111
#> [456,]  73   0      0        180        0   156
#> [457,]  78  12      1         11        1   160
#> [458,]  76   5      0        180        0   185
#> [459,]  74  10      1          0        1   135
#> [460,]  74   8      1          8        1   170
#> [461,]  73  33      1         12        1   175
#> [462,]  77   5      1          0        0   123
#> [463,]  77  12      1          9        1   100
#> [464,]  73  10      1          9        0   146
#> [465,]  77   1      1          0        1    90
#> [466,]  76  12      1         11        1   120
#> [467,]  73   7      1          0        0   174
#> [468,]  74   6      0         79        1   140
#> [469,]  75   3      1          1        1   171
#> [470,]  74   9      1          8        0   200
#> [471,]  75   6      0        180        0   150
#> [472,]  74   2      1          0        1   130
#> [473,]  78  18      0         18        1   144
#> [474,]  77   3      0        180        0   110
#> [475,]  76  29      0         47        0    90
#> [476,]  78   7      0          7        1   133
#> [477,]  74  15      0        180        1   172
#> [478,]  78   8      1          6        1   110
#> [479,]  74   7      0          7        0   161
#> [480,]  78  32      1          9        1   198
#> [481,]  79   6      0        180        0   170
#> [482,]  75   5      0        119        1   150
#> [483,]  80   8      0          8        1   120
#> [484,]  75  13      1          6        0   150
#> [485,]  74  10      1          8        0   135
#> [486,]  79   4      0         80        0   145
#> [487,]  78  12      1          9        0   150
#> [488,]  78   2      1          1        0   130
#> [489,]  77   2      1          0        1   143
#> [490,]  75  11      1          4        0   162
#> [491,]  77  24      0         24        1   160
#> [492,]  80   9      0         23        1   128
#> [493,]  80   6      0          6        1   150
#> [494,]  78   6      1          0        1   240
#> [495,]  78  11      1          1        1   140
#> [496,]  79  11      0        180        0   160
#> [497,]  79   2      1          0        1   121
#> [498,]  78  14      1          0        1   140
#> [499,]  78  11      1          8        1   118
#> [500,]  76   4      0          4        1   160
#> [501,]  79   4      0          4        1   125
#> [502,]  76  10      1          8        0   180
#> [503,]  76  12      1         10        1   127
#> [504,]  75   2      1          1        1   204
#> [505,]  78  11      0        180        1   135
#> [506,]  76   1      0          1        1   140
#> [507,]  77  31      1          3        1   161
#> [508,]  76   1      0          1        1    90
#> [509,]  78   7      1          0        1   110
#> [510,]  79   3      0          3        0   120
#> [511,]  77   7      0        180        1   170
#> [512,]  77   6      0          6        1   144
#> [513,]  79   4      1          0        1   120
#> [514,]  81   1      0        180        0   120
#> [515,]  80  15      1         12        1   150
#> [516,]  77   9      1          4        0   141
#> [517,]  80  40      1          0        1   138
#> [518,]  80  17      1         12        0   100
#> [519,]  76   7      0        161        0   151
#> [520,]  80  15      1          0        1    90
#> [521,]  81   4      1          2        1   126
#> [522,]  79  28      0        164        0   100
#> [523,]  80   6      0        173        1   160
#> [524,]  78  32      0        180        1   130
#> [525,]  79   1      0         37        1   140
#> [526,]  81   3      0        180        0   184
#> [527,]  81   2      0        175        0   172
#> [528,]  77  13      1          0        1   190
#> [529,]  80   5      1          1        1   108
#> [530,]  78   4      0        180        0   175
#> [531,]  78  26      1          5        0   194
#> [532,]  81   4      1          1        1   104
#> [533,]  80   1      0          1        0   100
#> [534,]  78   3      1          1        1   152
#> [535,]  80   2      1          1        0   168
#> [536,]  79   6      0          6        0   152
#> [537,]  80   5      0          5        1   130
#> [538,]  77   4      0        180        1    98
#> [539,]  81   1      0        108        0   129
#> [540,]  78  12      0        180        0   134
#> [541,]  79   4      0          4        1   121
#> [542,]  80   6      0          6        1   110
#> [543,]  83   9      1          5        1   170
#> [544,]  83   5      0        180        0   148
#> [545,]  79   7      1          6        0   130
#> [546,]  81   5      0        177        0    41
#> [547,]  80  11      1          8        0   170
#> [548,]  78  23      1         10        1   145
#> [549,]  79   4      0          4        1   183
#> [550,]  78   9      1          4        1   120
#> [551,]  82   8      1          1        0   128
#> [552,]  81  15      0        180        1   140
#> [553,]  80   7      1          0        1   146
#> [554,]  83   8      0          8        0   115
#> [555,]  81  16      0         16        1   110
#> [556,]  80   6      1          0        1   150
#> [557,]  80  11      1          8        0   110
#> [558,]  81   8      0        180        0   146
#> [559,]  80   8      1          7        0   160
#> [560,]  79   0      1          0        1    96
#> [561,]  85   4      0        180        0    90
#> [562,]  81   2      1          1        0   198
#> [563,]  82   6      0        128        1   100
#> [564,]  80   3      1          1        1   230
#> [565,]  82  23      1          0        0   110
#> [566,]  84   4      0          4        1    85
#> [567,]  84   1      0         38        1   205
#> [568,]  80  13      1          8        1   140
#> [569,]  84   4      0         89        1   129
#> [570,]  80   2      1          0        1   130
#> [571,]  79   4      0          4        1    60
#> [572,]  80   6      0         71        1   189
#> [573,]  83   1      0          1        1   100
#> [574,]  82  19      0         19        0   120
#> [575,]  83   9      0        180        0   198
#> [576,]  79  14      1          0        0   110
#> [577,]  83   3      0        114        0    98
#> [578,]  81  14      1         12        1   128
#> [579,]  82   0      0          2        1   100
#> [580,]  85   9      1          6        1   160
#> [581,]  83   1      0        180        0   160
#> [582,]  84  15      1         13        1   110
#> [583,]  81   1      0          1        1   145
#> [584,]  82  16      1          8        0   103
#> [585,]  82   5      1          0        1   146
#> [586,]  81   4      0          4        0   160
#> [587,]  81  19      1         14        0   120
#> [588,]  82   3      1          2        0   130
#> [589,]  80   2      0         88        0   135
#> [590,]  86   8      0          8        1   132
#> [591,]  81  16      1          9        0   180
#> [592,]  84   6      0        165        0   145
#> [593,]  82   9      0        180        1   134
#> [594,]  85   3      0          3        1   118
#> [595,]  81   4      0        180        0   160
#> [596,]  83   9      0        180        1   149
#> [597,]  82   1      0        180        1   193
#> [598,]  87   2      0          5        1   137
#> [599,]  86  12      1          0        1   132
#> [600,]  82  14      1         11        1   103
#> [601,]  84  16      0         70        1   150
#> [602,]  83  19      0         43        0   150
#> [603,]  83  10      1          0        1   190
#> [604,]  86   2      0        180        1   169
#> [605,]  84   3      0          3        1   121
#> [606,]  83  13      1         12        0   170
#> [607,]  84   7      1          2        0   148
#> [608,]  84   9      0         92        1   110
#> [609,]  84   3      0        180        1   170
#> [610,]  86   4      0         38        1   122
#> [611,]  82   4      0          4        0   130
#> [612,]  86  13      0        177        0   163
#> [613,]  85   3      0          3        1   113
#> [614,]  86   6      0          6        1   117
#> [615,]  84  13      0         62        1   100
#> [616,]  86   6      1          1        0   112
#> [617,]  83  20      1          3        1   150
#> [618,]  83   9      0         65        1   150
#> [619,]  86   9      1          7        1   142
#> [620,]  87   2      0        180        1   130
#> [621,]  86   6      0         46        0   173
#> [622,]  88   3      0        115        0   110
#> [623,]  88   2      0        180        1    68
#> [624,]  87   8      0          8        1   157
#> [625,]  86  15      1          8        1   109
#> [626,]  89   5      0        119        1   140
#> [627,]  87   1      0          1        0   170
#> [628,]  84   8      0        180        1   119
#> [629,]  84   2      0        110        1   174
#> [630,]  87  29      0         29        1    97
#> [631,]  87  15      1          9        1   138
#> [632,]  84   0      0        180        1   136
#> [633,]  89  10      0         46        1   170
#> [634,]  90  14      0         14        1   100
#> [635,]  88   1      0          1        0   135
#> [636,]  86   4      0        180        1   145
#> [637,]  87   2      0        180        0   160
#> [638,]  86   3      1          0        1    80
#> [639,]  88   7      0         24        0   119
#> [640,]  88   8      0         50        1   154
#> [641,]  90  11      1         10        1   186
#> [642,]  87   6      0        126        1   168
#> [643,]  86  10      0        180        1   137
#> [644,]  90   4      1          0        0   121
#> [645,]  91   1      0          1        1    74
#> [646,]  87  43      0        178        1   130
#> [647,]  92   1      0          1        1   167
#> [648,]  91   3      0         33        1   137
#> [649,]  88   5      0        158        0   100
#> [650,]  89  12      1          0        1   130
#> [651,]  89   2      0        168        0   118
#> [652,]  91   5      0        169        1   176
#> [653,]  89  52      0         52        1   130
#> [654,]  92   7      0          7        1   110
#> [655,]  89   4      0          4        1   159
#> [656,]  91   0      0          0        0     0
#> [657,]  89  14      0        180        1    84
#> [658,]  90  18      0        180        0   188
#> [659,]  91   4      1          0        1   120
#> [660,]  90   1      0          1        1   118
#> [661,]  92   4      0         76        1   149
#> [662,]  90  16      0         16        1   106
#> [663,]  96   3      0         12        1    97
#> [664,]  94   3      0         26        1   144
#> [665,]  91   7      0          7        0   135
#> [666,]  93   0      1          0        1   122
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   2.0+   5.0+ 180.0+   5.0+   2.0+ 180.0+ 115.0  180.0+ 180.0+  12.0 
#>  [11]   5.0+ 180.0+ 180.0+ 180.0+   2.0+   2.0+ 180.0+ 180.0+   3.0  180.0+
#>  [21] 180.0+ 180.0+   2.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0 
#>  [61]   1.0  179.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+   7.0  180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0 
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  166.0+ 180.0+ 152.0+   6.0+
#>  [91] 180.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+
#> [101]   2.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+  16.0   15.0+
#> [111] 180.0+ 180.0+ 134.0+ 180.0+   8.0  180.0+ 180.0+ 140.0  180.0+   1.0 
#> [121] 165.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [131] 180.0+ 180.0+ 171.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+   4.0+
#> [141]   9.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [151] 180.0+ 180.0+ 180.0+   9.0+   0.5  161.0+ 180.0+ 180.0+   3.0    1.0 
#> [161] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  17.0   45.0    3.0+  19.0  180.0+
#> [171]   9.0+ 180.0+ 172.0+  24.0  180.0+   8.0  180.0+   1.0+  15.0  180.0+
#> [181] 180.0+  77.0   13.0+ 180.0+ 180.0+ 180.0+  94.0  180.0+   7.0    7.0+
#> [191]   6.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0   13.0+  18.0  180.0+
#> [201] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+   9.0 
#> [211]  22.0  180.0+ 180.0+  84.0    7.0+ 180.0+ 180.0+   1.0    1.0  180.0+
#> [221]   4.0+ 167.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  14.0+ 180.0+
#> [231]  88.0   12.0  180.0+ 180.0+ 180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+
#> [241] 180.0+ 180.0+ 180.0+  11.0+   2.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+
#> [251] 103.0   15.0  180.0+ 180.0+   5.0+  13.0  180.0+ 166.0+  14.0+   3.0 
#> [261]   0.5+ 180.0+   3.0+ 180.0+ 180.0+  16.0  180.0+ 180.0+ 123.0+   1.0+
#> [271]  11.0+ 180.0+  79.0   80.0   15.0+ 180.0+   4.0+ 180.0+ 180.0+ 174.0+
#> [281] 180.0+ 180.0+   8.0+ 180.0+  10.0  180.0+ 180.0+ 180.0+ 180.0+  19.0+
#> [291]  12.0   99.0  180.0+ 179.0+ 180.0+  11.0+ 180.0+  18.0    7.0+ 180.0+
#> [301] 152.0+ 180.0+ 180.0+  93.0   21.0+ 180.0+   1.0   18.0+ 101.0    7.0+
#> [311] 180.0+ 180.0+ 180.0+   1.0  180.0+   6.0  180.0+   0.5  180.0+ 180.0+
#> [321] 180.0+ 180.0+  14.0+   7.0+   2.0   45.0    5.0+   3.0+ 180.0+  36.0 
#> [331]   5.0+ 180.0+ 180.0+  97.0  180.0+   7.0    8.0+ 180.0+   2.0+ 180.0+
#> [341]  18.0  180.0+ 180.0+  13.0+ 123.0  180.0+ 180.0+ 180.0+   1.0    1.0 
#> [351]  60.0   76.0  132.0   10.0+ 180.0+ 162.0    7.0+   7.0+ 180.0+ 180.0+
#> [361] 180.0+ 180.0+ 180.0+ 152.0  180.0+   2.0   76.0  180.0+ 180.0+ 180.0+
#> [371] 180.0+ 180.0+  28.0  180.0+  16.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+
#> [381] 180.0+   7.0+  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+
#> [391] 180.0+  20.0   20.0  180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+
#> [401] 180.0+ 180.0+ 180.0+  14.0+ 180.0+  10.0+ 180.0+   8.0+ 179.0+   1.0 
#> [411] 180.0+ 180.0+  10.0    1.0  180.0+  13.0  180.0+   4.0+ 180.0+   1.0 
#> [421]  57.0  180.0+  11.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [431]   5.0   11.0+  15.0+ 180.0+  10.0  180.0+   3.0  180.0+ 180.0+ 180.0+
#> [441] 180.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+   4.0    7.0    0.5  180.0+
#> [451]  12.0   46.0  180.0+   4.0  180.0+ 180.0+  12.0  180.0+ 180.0+   8.0 
#> [461]  33.0    5.0  180.0+ 180.0+   1.0   12.0    7.0+  79.0    3.0  168.0+
#> [471] 180.0+ 176.0+  18.0  180.0+  47.0    7.0  180.0+   8.0+   7.0   32.0 
#> [481] 180.0+ 119.0    8.0  180.0+ 180.0+  80.0  180.0+ 180.0+   2.0  152.0+
#> [491]  24.0   23.0    6.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  11.0    4.0 
#> [501]   4.0   10.0+ 180.0+   2.0+ 180.0+   1.0  171.0    1.0   43.0    3.0 
#> [511] 180.0+   6.0  138.0  180.0+ 180.0+  71.0   40.0   17.0  161.0  180.0+
#> [521]  93.0  164.0  173.0  180.0+  37.0  180.0+ 175.0+  22.0    5.0+ 180.0+
#> [531] 171.0+  71.0    1.0    3.0+  10.0    6.0+   5.0  180.0+ 108.0  180.0+
#> [541]   4.0    6.0    9.0+ 180.0+ 180.0+ 177.0+ 169.0   70.0    4.0  180.0+
#> [551] 180.0+ 180.0+   7.0+   8.0+  16.0  180.0+ 180.0+ 180.0+ 180.0+   0.5 
#> [561] 180.0+ 180.0+ 128.0    3.0+  62.0    4.0   38.0  180.0+  89.0  180.0+
#> [571]   4.0   71.0    1.0   19.0  180.0+ 180.0+ 114.0  180.0+   2.0  180.0+
#> [581] 180.0+ 180.0+   1.0   16.0+   5.0+   4.0+ 180.0+   3.0   88.0    8.0 
#> [591] 180.0+ 165.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 174.0 
#> [601]  70.0   43.0  180.0+ 180.0+   3.0   13.0  180.0+  92.0  180.0+  38.0 
#> [611]   4.0  177.0    3.0+   6.0+  62.0    6.0+  20.0   65.0   11.0  180.0+
#> [621]  46.0  115.0  180.0+   8.0+ 180.0+ 119.0    1.0+ 180.0+ 110.0   29.0 
#> [631] 180.0+ 180.0+  46.0   14.0    1.0+ 180.0+ 180.0+   3.0   24.0   50.0 
#> [641]  11.0  126.0  180.0+   4.0    1.0  178.0+   1.0   33.0  158.0  180.0+
#> [651] 168.0  169.0   52.0    7.0    4.0    0.5  180.0+ 180.0+   4.0    1.0+
#> [661]  76.0   16.0   12.0   26.0    7.0+   0.5    2.0  180.0+   3.0   15.0+
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
#>   0.8274984 
```
