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
#> min 0.00355    45   2.691 0.08031       6
#> 1se 0.04799    17   2.760 0.07838       5
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
#>  [10,]  38   2      0        115        0   150
#>  [11,]  35   0      0        180        1   119
#>  [12,]  40  12      1          9        0   153
#>  [13,]  42   3      1          1        1   130
#>  [14,]  40   2      1          1        1   148
#>  [15,]  42   2      0        180        1   100
#>  [16,]  38   5      1          3        0   125
#>  [17,]  40   6      0        180        1   138
#>  [18,]  42   2      0        180        0   100
#>  [19,]  41   2      1          1        0   166
#>  [20,]  40   1      1          0        1   145
#>  [21,]  43   4      1          0        1   130
#>  [22,]  42   4      0        180        0   162
#>  [23,]  42  15      1         13        1   125
#>  [24,]  40   3      1          1        0   170
#>  [25,]  42  12      1         10        1   170
#>  [26,]  43   2      1          1        1   116
#>  [27,]  42   2      0        180        1   124
#>  [28,]  45   3      0        180        1   154
#>  [29,]  41  10      1          8        0   150
#>  [30,]  41  13      1          1        0   140
#>  [31,]  45   9      1          7        0   110
#>  [32,]  44   2      1          1        1   150
#>  [33,]  43   2      0        180        1   140
#>  [34,]  46   2      1          1        0   126
#>  [35,]  48  15      0        180        1   160
#>  [36,]  44   3      1          0        1   180
#>  [37,]  46   7      1          2        0   166
#>  [38,]  43  10      0        180        0   185
#>  [39,]  46  13      1         10        0   100
#>  [40,]  44   0      1          0        1    96
#>  [41,]  43   3      1          0        1   124
#>  [42,]  46   2      1          1        1   122
#>  [43,]  44   4      1          0        1   114
#>  [44,]  47   2      0        180        0   108
#>  [45,]  44   9      1          8        1   135
#>  [46,]  45   5      0        180        1   190
#>  [47,]  46   5      1          3        0   130
#>  [48,]  46   4      0        180        1   121
#>  [49,]  44   2      0        180        0   142
#>  [50,]  46  15      0        180        1   120
#>  [51,]  45   9      1          0        1   145
#>  [52,]  47   3      1          1        1   120
#>  [53,]  48   3      0        180        0   154
#>  [54,]  48  12      1         11        0   200
#>  [55,]  47   5      1          3        1   130
#>  [56,]  47   9      1          6        0   170
#>  [57,]  49   4      0        180        0   117
#>  [58,]  47  10      0         10        1   140
#>  [59,]  50   1      1          0        1   129
#>  [60,]  47   7      0        180        0   145
#>  [61,]  50   6      1          2        1   140
#>  [62,]  49   7      1          7        1   110
#>  [63,]  46   3      1          1        1   140
#>  [64,]  46   9      1          9        1   122
#>  [65,]  50   7      0        180        1   110
#>  [66,]  51   1      0          1        1   145
#>  [67,]  47   2      0        180        0   150
#>  [68,]  49  23      0        179        1   112
#>  [69,]  52   2      0        180        1   170
#>  [70,]  50   4      0          4        1   100
#>  [71,]  51   3      1          2        0   113
#>  [72,]  50   1      1          0        0   150
#>  [73,]  50   9      0        180        0   130
#>  [74,]  49   7      1          4        1    90
#>  [75,]  47   8      0        180        0   160
#>  [76,]  47   6      0        180        1   162
#>  [77,]  52   2      0        180        0   155
#>  [78,]  46   3      0        180        1   120
#>  [79,]  46   1      1          1        0   145
#>  [80,]  50   4      1          1        0   150
#>  [81,]  48   7      1          0        1   110
#>  [82,]  53   8      0         36        1   160
#>  [83,]  48  17      1         10        0   111
#>  [84,]  47   2      1          1        0   110
#>  [85,]  52   4      1          4        0   152
#>  [86,]  49   9      1          3        0   102
#>  [87,]  49  15      0        180        1   160
#>  [88,]  53   5      0        180        1   140
#>  [89,]  54  17      1         12        1   102
#>  [90,]  53   7      1          0        0   199
#>  [91,]  54   6      1          3        0   129
#>  [92,]  51   3      1          1        0   140
#>  [93,]  50   2      0          5        1   106
#>  [94,]  50  14      1         13        0   170
#>  [95,]  53   8      1          7        0   160
#>  [96,]  48   3      1          2        0   150
#>  [97,]  49   5      1          2        1   150
#>  [98,]  52  14      1          7        1   200
#>  [99,]  48   6      0        180        0   160
#> [100,]  48  11      1         10        0   120
#> [101,]  55   3      1          1        0   150
#> [102,]  54  23      1         10        0   131
#> [103,]  52   7      1          2        0   154
#> [104,]  55   6      1          2        1   114
#> [105,]  54   9      1          1        0   130
#> [106,]  55   4      1          2        0   150
#> [107,]  52   4      0        180        1   180
#> [108,]  51  13      1         11        0   145
#> [109,]  50   5      1          4        1   150
#> [110,]  54   4      1          0        1   121
#> [111,]  52   4      0        180        0   183
#> [112,]  50   3      0        174        1   153
#> [113,]  55  28      1         13        1   160
#> [114,]  49   6      1          0        1   130
#> [115,]  49   1      0          1        1   110
#> [116,]  50   7      1          1        0   156
#> [117,]  53   9      0          9        1    95
#> [118,]  53   8      1          0        1   130
#> [119,]  56   4      1          1        1   130
#> [120,]  55   1      0        180        0   127
#> [121,]  55   2      0          2        0   145
#> [122,]  54   1      0        180        0   162
#> [123,]  54   7      1          0        1   100
#> [124,]  56   3      0        180        1   193
#> [125,]  53  18      1          9        1   150
#> [126,]  54   3      0        180        1   180
#> [127,]  53  10      1          9        0   172
#> [128,]  52  16      1         14        0   170
#> [129,]  53  15      0         15        1    90
#> [130,]  55   6      0        180        1   100
#> [131,]  55   1      0          2        0   130
#> [132,]  57   3      0          3        0   120
#> [133,]  54   7      1          2        0   129
#> [134,]  52   9      1          3        0   170
#> [135,]  57   5      1          3        1   138
#> [136,]  56   4      1          0        1   140
#> [137,]  55  11      1          7        0   104
#> [138,]  52  15      1         14        0   130
#> [139,]  56  14      1         11        0   130
#> [140,]  57  10      0        180        1   170
#> [141,]  55   3      1          1        1   156
#> [142,]  57   0      0          0        1   150
#> [143,]  53  21      1         13        1   130
#> [144,]  59   3      1          1        0   172
#> [145,]  57   4      0        180        1   119
#> [146,]  58   6      1          0        1    90
#> [147,]  53  15      1         10        1   130
#> [148,]  54  17      1          8        1   227
#> [149,]  55   9      1          2        1   147
#> [150,]  55  13      0        166        1   140
#> [151,]  56   5      0          5        1   150
#> [152,]  57   4      1          2        1   185
#> [153,]  53   4      0        147        1   145
#> [154,]  53   7      1          0        1   120
#> [155,]  55   3      1          2        0   140
#> [156,]  55   5      0          5        1   131
#> [157,]  56   4      0          4        0   164
#> [158,]  59  15      1         10        0   140
#> [159,]  58   1      1          1        1   200
#> [160,]  55   5      1          0        0   140
#> [161,]  56   7      1          5        1   120
#> [162,]  55   2      0          2        0   106
#> [163,]  59   9      1          1        1   125
#> [164,]  57   1      0        180        0   148
#> [165,]  60  11      1          9        0   106
#> [166,]  58   4      1          0        1   160
#> [167,]  57   2      0          2        1   120
#> [168,]  60   5      1          1        0   138
#> [169,]  55   5      1          0        1   160
#> [170,]  57  10      1          9        0   103
#> [171,]  59   5      0        180        1   155
#> [172,]  58  26      1          0        1   189
#> [173,]  61   9      0          9        1   160
#> [174,]  58   4      1          3        0   120
#> [175,]  60   0      1          0        1    80
#> [176,]  58   8      0        161        1   140
#> [177,]  58  14      1          6        0   190
#> [178,]  61   9      1          8        0   150
#> [179,]  61   3      1          2        1   102
#> [180,]  58   1      0          1        1   100
#> [181,]  61  20      1         13        0   130
#> [182,]  58  10      0         10        1   150
#> [183,]  61   3      0         17        0   143
#> [184,]  58  19      1         13        1   140
#> [185,]  56  18      1         11        1   165
#> [186,]  55   4      1          3        1   160
#> [187,]  58  11      0        172        1   135
#> [188,]  60  12      1          0        1   114
#> [189,]  61   4      1          0        1   115
#> [190,]  56   8      1          8        0   120
#> [191,]  61  13      1         12        1   130
#> [192,]  59  11      1          8        1   190
#> [193,]  57   1      0          1        0   126
#> [194,]  61   8      0         77        0   120
#> [195,]  61  13      0         13        0   210
#> [196,]  58   8      1          5        0   152
#> [197,]  62  10      1          0        1   153
#> [198,]  62   7      1          2        1   180
#> [199,]  61  18      0        170        0   140
#> [200,]  61  28      1          7        0   133
#> [201,]  61   7      0          7        1   150
#> [202,]  60   7      0          7        0   147
#> [203,]  57  12      1          9        1   120
#> [204,]  62   4      1          0        0   160
#> [205,]  58   3      1          0        1   146
#> [206,]  57  18      1          9        1    93
#> [207,]  61   5      0          5        1   160
#> [208,]  58  11      1          9        0   179
#> [209,]  57   2      1          1        0   159
#> [210,]  62   1      1          0        1   172
#> [211,]  58   7      0        180        1   150
#> [212,]  63   3      1          1        0   180
#> [213,]  63   1      0        180        1   130
#> [214,]  61   7      0        180        0   135
#> [215,]  62   3      0        180        1   105
#> [216,]  63   4      0        180        1   190
#> [217,]  63  15      1         10        1   126
#> [218,]  64   4      0        180        0   130
#> [219,]  63   4      1          1        0   155
#> [220,]  60  18      1         13        0   132
#> [221,]  61   9      1          9        1   150
#> [222,]  58   9      1          9        0   110
#> [223,]  59   1      0         22        1   162
#> [224,]  58   2      0        180        0   127
#> [225,]  59   4      0        180        0   196
#> [226,]  60   7      1          5        1   141
#> [227,]  60   7      0          7        0   140
#> [228,]  63   1      0          1        0   162
#> [229,]  63   1      0          1        0   130
#> [230,]  60   3      0          3        0   168
#> [231,]  63  12      1         10        0   200
#> [232,]  60   8      0         17        1   130
#> [233,]  61   6      1          1        1   117
#> [234,]  64  12      1         11        0   160
#> [235,]  66   1      1          0        1   120
#> [236,]  64   6      1          0        1   140
#> [237,]  63  10      1          0        1   148
#> [238,]  63  14      1          9        0   123
#> [239,]  65  36      1         11        0   140
#> [240,]  63   4      1          3        0   162
#> [241,]  63  12      1          9        0   114
#> [242,]  63   7      0        180        0   120
#> [243,]  65   8      1          0        0   168
#> [244,]  65  10      1          8        1   120
#> [245,]  60   6      0        180        0   130
#> [246,]  61  12      1         11        0   154
#> [247,]  63  16      1          7        1   110
#> [248,]  64   7      0        180        1   120
#> [249,]  66   6      1          1        1   130
#> [250,]  63  12      0         12        1   150
#> [251,]  62   3      1          1        1   199
#> [252,]  65   3      1          0        1    80
#> [253,]  63   5      1          4        0   170
#> [254,]  62  13      1         11        0   180
#> [255,]  64   2      0          2        0   201
#> [256,]  66  18      1          5        0   142
#> [257,]  62   9      0        180        0   145
#> [258,]  61  14      1          5        0   140
#> [259,]  61  15      1         10        0   130
#> [260,]  63   9      1          8        1   160
#> [261,]  63   3      1          2        0   120
#> [262,]  63   2      1          0        0   140
#> [263,]  65   8      1          0        1   140
#> [264,]  67   6      0        180        1   170
#> [265,]  65  15      1         11        1   160
#> [266,]  64  13      1         12        1   150
#> [267,]  64   6      1          0        1   125
#> [268,]  66   7      1          0        1   115
#> [269,]  66  13      1          0        0   118
#> [270,]  64  14      1         13        1   150
#> [271,]  65   3      0          3        0   105
#> [272,]  64   0      0          0        1   148
#> [273,]  67   4      1          3        0   130
#> [274,]  66   3      1          0        1   135
#> [275,]  66   6      1          0        1   140
#> [276,]  68   1      0        180        1   166
#> [277,]  64  10      1          9        1   110
#> [278,]  63   7      1          0        0   162
#> [279,]  67   8      1          1        1   130
#> [280,]  63  10      0         16        1   160
#> [281,]  66  14      0        180        0   130
#> [282,]  65  17      1         14        1   100
#> [283,]  63   8      1          1        1   162
#> [284,]  65  18      1          3        0   120
#> [285,]  63   1      1          0        1   155
#> [286,]  63  10      0         18        1   130
#> [287,]  65  15      1         12        1   150
#> [288,]  65   4      1          2        1   145
#> [289,]  69  12      0         15        1   140
#> [290,]  66  15      1         13        1   160
#> [291,]  63   2      0        180        0   150
#> [292,]  65  11      1          6        0   130
#> [293,]  69  21      1         10        0   180
#> [294,]  69   6      0        180        1   100
#> [295,]  63   8      0        180        1   120
#> [296,]  68  14      1         13        1   140
#> [297,]  65   8      1          0        1    90
#> [298,]  67   1      0        180        1   160
#> [299,]  68  10      1         10        1   150
#> [300,]  65   1      1          0        0   133
#> [301,]  67   7      1          4        1   130
#> [302,]  63   2      1          0        0    99
#> [303,]  67   2      0        180        0   184
#> [304,]  65  10      1          1        1   148
#> [305,]  67  12      1         12        0   160
#> [306,]  69   6      0         99        1   140
#> [307,]  66   4      0        180        1   130
#> [308,]  64  11      0         11        0   125
#> [309,]  64   4      0        180        1   140
#> [310,]  67   2      0         18        0   131
#> [311,]  66   4      0        180        0   177
#> [312,]  69   4      1          3        1   150
#> [313,]  65  13      1         12        1   130
#> [314,]  69  17      1         10        0   140
#> [315,]  69   8      0         93        0   140
#> [316,]  65   1      0          1        1   120
#> [317,]  68  18      1          0        1   160
#> [318,]  68   4      0          4        1   190
#> [319,]  70   7      1          0        1   190
#> [320,]  68   7      0        150        0   210
#> [321,]  66   1      1          1        1   165
#> [322,]  70  14      0        171        0   166
#> [323,]  67   6      1          4        0   130
#> [324,]  68  18      1         14        1   170
#> [325,]  65   2      0        180        0   130
#> [326,]  68   7      1          0        1   150
#> [327,]  69   3      1          2        0   151
#> [328,]  65  14      1         13        1   150
#> [329,]  69   8      0        180        1   180
#> [330,]  71   7      0          7        0   230
#> [331,]  71   6      0         45        1   158
#> [332,]  69   5      0          5        1   142
#> [333,]  71   3      0        103        0   133
#> [334,]  69   3      0          3        1   130
#> [335,]  70  22      1         13        0   103
#> [336,]  67   5      0          5        0   130
#> [337,]  69   8      1          5        1   195
#> [338,]  72   3      1          0        1   132
#> [339,]  72   7      0          7        1   110
#> [340,]  69   8      1          7        1   108
#> [341,]  67   3      0        180        0   110
#> [342,]  66   2      1          1        0   123
#> [343,]  68  18      0         18        1   100
#> [344,]  69  11      1          0        1   120
#> [345,]  66   2      0        180        0   130
#> [346,]  69   4      1          3        0   132
#> [347,]  68   2      0          7        1   130
#> [348,]  67  13      1          9        0   130
#> [349,]  70   9      0        180        1   142
#> [350,]  72   5      1          4        0   170
#> [351,]  67  12      1          8        0   120
#> [352,]  69   1      0          1        1   110
#> [353,]  67   1      0          1        1    60
#> [354,]  67   4      0         60        1   136
#> [355,]  69   5      0         76        0   120
#> [356,]  67   8      1          0        1   130
#> [357,]  72  13      1         11        1   195
#> [358,]  68  10      1          8        1   160
#> [359,]  70  35      1          0        1   105
#> [360,]  72  30      1          0        1   145
#> [361,]  68   7      1          2        0   135
#> [362,]  71   6      0          9        0   120
#> [363,]  70  11      0        180        1   210
#> [364,]  72  19      1          8        0   120
#> [365,]  67   8      0        180        1   170
#> [366,]  67   9      0        180        0   158
#> [367,]  72   2      0          2        1   100
#> [368,]  67   4      1          1        0   134
#> [369,]  71   1      0        173        1   188
#> [370,]  68  23      0        180        1   220
#> [371,]  70   3      0        180        0   121
#> [372,]  68   4      1          3        0   210
#> [373,]  71   5      0        180        0   191
#> [374,]  69  16      1         10        1   140
#> [375,]  68   7      0        180        1   130
#> [376,]  72  16      1          1        1   130
#> [377,]  70   4      0        180        0   180
#> [378,]  69   1      1          0        0   155
#> [379,]  72   8      1          1        1   150
#> [380,]  73   7      0          7        1   140
#> [381,]  68  15      1         13        1   130
#> [382,]  70   3      0          3        1   159
#> [383,]  69   2      1          0        1   110
#> [384,]  71   3      1          1        0   150
#> [385,]  71  15      1         11        0   165
#> [386,]  74  20      0         20        1   180
#> [387,]  68   9      0        180        1   120
#> [388,]  73   3      1          0        1   136
#> [389,]  71  17      1         11        0   160
#> [390,]  71   3      1          2        1   190
#> [391,]  73  10      1          8        0   106
#> [392,]  70  26      1         11        1   120
#> [393,]  74   4      0          4        0   120
#> [394,]  72   5      1          3        1   160
#> [395,]  73   6      0        180        0   110
#> [396,]  72  15      1          0        1   150
#> [397,]  71   7      1          2        0   143
#> [398,]  74   3      0          3        1   150
#> [399,]  73  17      1         11        0   140
#> [400,]  71  13      1          8        0   121
#> [401,]  69   2      1          1        1    80
#> [402,]  70   4      1          0        1   140
#> [403,]  72  10      1          8        1   153
#> [404,]  72  15      1         13        0   156
#> [405,]  70   8      0          8        0   120
#> [406,]  75   2      1          1        0   145
#> [407,]  73  10      1          9        1   146
#> [408,]  73  10      1         10        1   120
#> [409,]  74  15      1          9        1   179
#> [410,]  73   1      0          1        1    80
#> [411,]  75   9      1          7        0   140
#> [412,]  75  13      1          1        1   130
#> [413,]  71  11      1          8        0   110
#> [414,]  71   4      0          4        0   134
#> [415,]  70   7      1          4        0   184
#> [416,]  72   1      1          1        0   168
#> [417,]  73  10      0        180        0   162
#> [418,]  72  11      0         11        1   140
#> [419,]  70   3      0          3        0   150
#> [420,]  73   5      1          3        1   112
#> [421,]  73  12      1         12        1   140
#> [422,]  72   2      0        180        0   120
#> [423,]  75   1      0        180        1   140
#> [424,]  72   4      1          0        1   197
#> [425,]  73   5      0        180        0   126
#> [426,]  73   4      0        180        0   124
#> [427,]  74  34      1          8        1   233
#> [428,]  71  32      1         12        1   107
#> [429,]  72   5      0        180        0   154
#> [430,]  77  11      0         11        1   150
#> [431,]  77   4      0          4        0   185
#> [432,]  75   3      1          1        0   180
#> [433,]  72   7      1          2        0   142
#> [434,]  73  15      0         15        1   160
#> [435,]  71  16      0        180        0   140
#> [436,]  74   7      0        180        1   150
#> [437,]  74   3      0          3        1   128
#> [438,]  76   1      0        180        0   114
#> [439,]  76   8      1          0        1   141
#> [440,]  74  19      1          4        1   200
#> [441,]  75  23      1         14        1   110
#> [442,]  72   4      0         85        1   120
#> [443,]  72   4      1          3        0   160
#> [444,]  76  17      1          0        1   200
#> [445,]  73   4      1          3        1   125
#> [446,]  75   0      0          0        1   130
#> [447,]  73  13      1         11        0   195
#> [448,]  74   8      1          0        1   105
#> [449,]  76  13      1          8        1   148
#> [450,]  75   4      1          2        1   188
#> [451,]  74   6      0        180        0   160
#> [452,]  76   4      0          4        1   155
#> [453,]  75   1      0          1        1   125
#> [454,]  74   2      0        180        0   111
#> [455,]  73   0      0        180        0   156
#> [456,]  72   5      0        180        0   120
#> [457,]  78  12      1         11        1   160
#> [458,]  74  10      1          0        1   135
#> [459,]  76   5      1          0        1   167
#> [460,]  74   8      1          8        1   170
#> [461,]  75   9      0        180        1   140
#> [462,]  73  33      1         12        1   175
#> [463,]  77  12      1          9        1   100
#> [464,]  73  10      1          9        0   146
#> [465,]  77  12      0        180        0   130
#> [466,]  77   1      1          0        1    90
#> [467,]  78   5      1          0        1   170
#> [468,]  73   7      1          0        0   174
#> [469,]  74   6      0         79        1   140
#> [470,]  75   3      1          1        1   171
#> [471,]  74   9      1          8        0   200
#> [472,]  75   6      0        180        0   150
#> [473,]  79  10      1          8        0   190
#> [474,]  74   2      1          0        1   130
#> [475,]  78  18      0         18        1   144
#> [476,]  76  29      0         47        0    90
#> [477,]  73   8      1          1        1   162
#> [478,]  78   7      0          7        1   133
#> [479,]  74  15      0        180        1   172
#> [480,]  78   8      1          6        1   110
#> [481,]  78  32      1          9        1   198
#> [482,]  79   6      0        180        0   170
#> [483,]  80  10      1          6        1   147
#> [484,]  78  13      1          5        0   130
#> [485,]  75   5      0        119        1   150
#> [486,]  75  12      1          1        1   120
#> [487,]  78  15      0        180        1   270
#> [488,]  80   8      0          8        1   120
#> [489,]  75  13      1          6        0   150
#> [490,]  74  10      1          8        0   135
#> [491,]  76   1      0          1        1    83
#> [492,]  79   4      0         80        0   145
#> [493,]  78  12      1          9        0   150
#> [494,]  78   2      1          1        0   130
#> [495,]  75   4      1          0        0   212
#> [496,]  77   2      1          0        1   143
#> [497,]  78  10      0        180        1   130
#> [498,]  79   8      0         32        1   120
#> [499,]  80   9      0         23        1   128
#> [500,]  80   6      0          6        1   150
#> [501,]  78   6      1          0        1   240
#> [502,]  76   3      1          0        1   140
#> [503,]  78  11      1          1        1   140
#> [504,]  79   2      1          0        1   121
#> [505,]  78  14      1          0        1   140
#> [506,]  81   1      0          1        0   130
#> [507,]  78  11      1          8        1   118
#> [508,]  76   4      0          4        1   160
#> [509,]  79   4      0          4        1   125
#> [510,]  76  12      1         10        1   127
#> [511,]  75   2      1          1        1   204
#> [512,]  78  11      0        180        1   135
#> [513,]  76   1      0          1        1   140
#> [514,]  77  31      1          3        1   161
#> [515,]  76   1      0          1        1    90
#> [516,]  78   7      1          0        1   110
#> [517,]  79   3      0          3        0   120
#> [518,]  77   7      0        180        1   170
#> [519,]  77   6      0          6        1   144
#> [520,]  79   4      1          0        1   120
#> [521,]  81   1      0        180        0   120
#> [522,]  80  15      1         12        1   150
#> [523,]  77   9      1          4        0   141
#> [524,]  82   5      0          8        1   120
#> [525,]  80  40      1          0        1   138
#> [526,]  78   4      0         59        1   112
#> [527,]  80  17      1         12        0   100
#> [528,]  79  10      0         10        1   120
#> [529,]  80  15      1          0        1    90
#> [530,]  79  28      0        164        0   100
#> [531,]  80   9      0        118        1   186
#> [532,]  79   1      0         37        1   140
#> [533,]  78   7      0          7        1   147
#> [534,]  80   5      1          1        1   108
#> [535,]  79   3      0          3        1   101
#> [536,]  78  26      1          5        0   194
#> [537,]  76   1      0        166        0   131
#> [538,]  78  20      1          0        1   109
#> [539,]  80   1      0          1        0   100
#> [540,]  78   3      1          1        1   152
#> [541,]  77   5      0         85        0   188
#> [542,]  80   2      1          1        0   168
#> [543,]  79   6      0          6        0   152
#> [544,]  78   2      0        180        0   148
#> [545,]  80   5      0          5        1   130
#> [546,]  81   1      0        108        0   129
#> [547,]  78  12      0        180        0   134
#> [548,]  82  21      1          2        0   155
#> [549,]  84  22      1         10        0   180
#> [550,]  80   6      0          6        1   110
#> [551,]  82   5      0        180        0   110
#> [552,]  83   5      0        180        0   148
#> [553,]  79   7      1          6        0   130
#> [554,]  81  11      1          8        0   160
#> [555,]  81   5      0        177        0    41
#> [556,]  79   4      0          4        1   183
#> [557,]  78   9      1          4        1   120
#> [558,]  79   1      0        180        1   170
#> [559,]  80   7      1          0        1   146
#> [560,]  81  20      1          9        0   170
#> [561,]  80   6      1          0        1   150
#> [562,]  80  11      1          8        0   110
#> [563,]  80   8      1          7        0   160
#> [564,]  79   0      1          0        1    96
#> [565,]  85   4      0        180        0    90
#> [566,]  81   2      1          1        0   198
#> [567,]  83   2      0          2        1   155
#> [568,]  84   4      0        167        0   198
#> [569,]  80   3      1          1        1   230
#> [570,]  84   5      0        180        1   203
#> [571,]  84   4      0          4        1    85
#> [572,]  81   1      0          1        1   150
#> [573,]  84   1      0         38        1   205
#> [574,]  83   3      0        180        0   174
#> [575,]  81   4      0         90        1   138
#> [576,]  79   9      1          8        0   150
#> [577,]  80  13      1          8        1   140
#> [578,]  84   4      0         89        1   129
#> [579,]  80   2      1          0        1   130
#> [580,]  79   4      0          4        1    60
#> [581,]  80   6      0         71        1   189
#> [582,]  83   1      0          1        1   100
#> [583,]  82  19      0         19        0   120
#> [584,]  80  30      1         13        0   220
#> [585,]  83   9      0        180        0   198
#> [586,]  83   3      0        114        0    98
#> [587,]  81  14      1         12        1   128
#> [588,]  83   2      0        154        0   130
#> [589,]  82   0      0          2        1   100
#> [590,]  85   9      1          6        1   160
#> [591,]  81   4      0          4        0   175
#> [592,]  81   1      0          1        1   145
#> [593,]  81  12      0         12        1   163
#> [594,]  82   5      1          0        1   146
#> [595,]  86  12      0        180        1   120
#> [596,]  81  19      1         14        0   120
#> [597,]  82   3      1          2        0   130
#> [598,]  83   7      0        126        0   135
#> [599,]  86   8      0          8        1   132
#> [600,]  81  16      1          9        0   180
#> [601,]  84   6      0        165        0   145
#> [602,]  85   3      0          3        1   118
#> [603,]  81   2      1          0        1   118
#> [604,]  81   4      0        180        0   160
#> [605,]  83   9      0        180        1   149
#> [606,]  82   1      0        180        1   193
#> [607,]  83   4      0          4        0   130
#> [608,]  87   2      0          5        1   137
#> [609,]  82  14      1         11        1   103
#> [610,]  86   6      1          0        1   140
#> [611,]  83  19      0         43        0   150
#> [612,]  86   2      0        180        1   169
#> [613,]  88  14      1          3        1   130
#> [614,]  83  13      1         12        0   170
#> [615,]  87   2      0        180        0   113
#> [616,]  84   3      0        180        1   170
#> [617,]  86   4      0         38        1   122
#> [618,]  84  13      0         62        1   100
#> [619,]  86   6      1          1        0   112
#> [620,]  88   4      0          4        1   115
#> [621,]  86   9      1          7        1   142
#> [622,]  88   3      0        115        0   110
#> [623,]  87   8      0          8        1   157
#> [624,]  86  15      1          8        1   109
#> [625,]  88   4      0          4        0    86
#> [626,]  89   4      0          4        1   153
#> [627,]  89   5      0        119        1   140
#> [628,]  87   1      0          1        0   170
#> [629,]  84   8      0        180        1   119
#> [630,]  85   8      0          8        1   136
#> [631,]  84   2      0        110        1   174
#> [632,]  87  29      0         29        1    97
#> [633,]  87  15      1          9        1   138
#> [634,]  89  10      0         46        1   170
#> [635,]  90  14      0         14        1   100
#> [636,]  86   4      0        180        1   145
#> [637,]  91   8      0          8        0   100
#> [638,]  87   2      0        180        0   160
#> [639,]  87   6      1          0        0   125
#> [640,]  91  10      0        145        0   135
#> [641,]  88   8      0         50        1   154
#> [642,]  90  11      1         10        1   186
#> [643,]  87   6      0        126        1   168
#> [644,]  86   9      1          7        0   130
#> [645,]  87  43      0        178        1   130
#> [646,]  90   5      1          0        1   125
#> [647,]  88   3      1          2        0   159
#> [648,]  92   1      0          1        1   167
#> [649,]  91   3      0         33        1   137
#> [650,]  88   5      0        158        0   100
#> [651,]  87   7      0         74        1   105
#> [652,]  91   5      0        169        1   176
#> [653,]  89  52      0         52        1   130
#> [654,]  92   7      0          7        1   110
#> [655,]  89   4      0          4        1   159
#> [656,]  91   0      0          0        0     0
#> [657,]  94   6      0         50        0    78
#> [658,]  91   2      0          2        1   116
#> [659,]  94   8      0          8        1   142
#> [660,]  92   4      0         76        1   149
#> [661,]  90   3      0         67        0   162
#> [662,]  96   3      0         12        1    97
#> [663,]  95   8      1          5        1   150
#> [664,]  94   3      0         26        1   144
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0 
#>  [11] 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+
#>  [51] 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+
#>  [61] 180.0+   7.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 179.0+ 180.0+   4.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81]   7.0   36.0   88.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+ 180.0+
#> [101] 180.0+ 152.0+   7.0+   6.0+ 180.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+
#> [111] 180.0+ 174.0+  28.0    6.0+   1.0  180.0+   9.0+ 180.0+ 180.0+ 180.0+
#> [121]   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0   15.0+ 180.0+
#> [131]   2.0    3.0+ 180.0+ 180.0+ 140.0  165.0  180.0+ 180.0+ 180.0+ 180.0+
#> [141] 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+
#> [151]   5.0+   4.0+ 147.0+ 180.0+ 180.0+   5.0+   4.0+ 180.0+   1.0  180.0+
#> [161] 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+
#> [171] 180.0+ 180.0+   9.0+ 180.0+   0.5  161.0+ 171.0+ 180.0+   3.0    1.0 
#> [181] 180.0+  10.0+  17.0   19.0  180.0+ 180.0+ 172.0+ 172.0+ 180.0+   8.0 
#> [191] 180.0+ 180.0+   1.0+  77.0   13.0+   8.0+ 180.0+ 180.0+ 170.0   94.0 
#> [201]   7.0    7.0+ 180.0+ 180.0+   3.0+  18.0    5.0+ 180.0+ 180.0+   1.0 
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [221] 180.0+   9.0   22.0  180.0+ 180.0+  84.0    7.0+   1.0    1.0    3.0+
#> [231] 180.0+  17.0  180.0+  12.0  180.0+ 180.0+ 180.0+  14.0+  36.0  180.0+
#> [241]  12.0  180.0+ 180.0+ 180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+  12.0 
#> [251] 180.0+   3.0  180.0+ 180.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [261]   3.0+   2.0+  15.0  180.0+ 180.0+  13.0  180.0+ 179.0+ 166.0+  14.0+
#> [271]   3.0    0.5+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   7.0+   8.0   16.0 
#> [281] 180.0+ 180.0+ 180.0+ 123.0+   1.0+  18.0   15.0+   4.0+  15.0  180.0+
#> [291] 180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+  10.0  180.0+
#> [301] 180.0+ 180.0+ 180.0+ 180.0+  12.0   99.0  180.0+  11.0+ 180.0+  18.0 
#> [311] 180.0+ 152.0+ 180.0+ 180.0+  93.0    1.0   18.0+   4.0    7.0+ 150.0 
#> [321]   1.0  171.0    6.0  180.0+ 180.0+ 180.0+ 180.0+  14.0+ 180.0+   7.0+
#> [331]  45.0    5.0+ 103.0    3.0+ 180.0+   5.0+ 180.0+ 180.0+   7.0    8.0+
#> [341] 180.0+   2.0+  18.0  180.0+ 180.0+ 180.0+   7.0   13.0+ 180.0+ 180.0+
#> [351] 180.0+   1.0    1.0   60.0   76.0  180.0+ 132.0   10.0+ 180.0+ 162.0 
#> [361]   7.0+   9.0  180.0+ 180.0+ 180.0+ 180.0+   2.0   76.0  173.0+ 180.0+
#> [371] 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0+ 180.0+ 180.0+ 180.0+   7.0+
#> [381]  15.0    3.0+   2.0    3.0+ 180.0+  20.0  180.0+ 180.0+ 180.0+   3.0 
#> [391]  87.0  180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0 
#> [401]   2.0  180.0+  10.0+ 180.0+   8.0+ 180.0+ 180.0+  15.0  180.0+   1.0 
#> [411] 180.0+  13.0  180.0+   4.0+ 104.0+   1.0  180.0+  11.0    3.0+   5.0 
#> [421]  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0  177.0+ 180.0+  11.0+
#> [431]   4.0+ 180.0+   7.0   15.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+
#> [441] 180.0+  85.0  180.0+  17.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+  46.0 
#> [451] 180.0+   4.0    1.0  180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+   8.0 
#> [461] 180.0+  33.0  180.0+ 180.0+ 180.0+   1.0  180.0+   7.0+  79.0    3.0 
#> [471] 168.0+ 180.0+ 180.0+ 176.0+  18.0   47.0  180.0+   7.0  180.0+   8.0+
#> [481]  32.0  180.0+  10.0  172.0  119.0   12.0  180.0+   8.0  180.0+ 180.0+
#> [491]   1.0   80.0  180.0+ 180.0+   4.0+   2.0  180.0+  32.0   23.0    6.0 
#> [501] 180.0+   3.0+ 180.0+ 180.0+ 180.0+   1.0   11.0    4.0    4.0  180.0+
#> [511]   2.0+ 180.0+   1.0  171.0    1.0   43.0    3.0  180.0+   6.0  138.0 
#> [521] 180.0+ 180.0+  71.0    8.0   40.0   59.0   17.0   10.0+ 180.0+ 164.0 
#> [531] 118.0   37.0    7.0+   5.0+   3.0  171.0+ 166.0+  20.0+   1.0    3.0+
#> [541]  85.0   10.0    6.0+ 180.0+   5.0  108.0  180.0+ 180.0+ 180.0+   6.0 
#> [551] 180.0+ 180.0+ 180.0+ 180.0+ 177.0+   4.0  180.0+ 180.0+   7.0+  20.0 
#> [561] 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+   2.0  167.0    3.0+ 180.0+
#> [571]   4.0    1.0   38.0  180.0+  90.0  180.0+ 180.0+  89.0  180.0+   4.0 
#> [581]  71.0    1.0   19.0   30.0  180.0+ 114.0  180.0+ 154.0    2.0  180.0+
#> [591]   4.0+   1.0   12.0    5.0+ 180.0+ 180.0+   3.0  126.0    8.0  180.0+
#> [601] 165.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0  174.0    6.0 
#> [611]  43.0  180.0+  14.0   13.0  180.0+ 180.0+  38.0   62.0    6.0+   4.0 
#> [621]  11.0  115.0    8.0+ 180.0+   4.0    4.0  119.0    1.0+ 180.0+   8.0 
#> [631] 110.0   29.0  180.0+  46.0   14.0  180.0+   8.0  180.0+  25.0  145.0 
#> [641]  50.0   11.0  126.0  180.0+ 178.0+  89.0   75.0    1.0   33.0  158.0 
#> [651]  74.0  169.0   52.0    7.0    4.0    0.5   50.0    2.0    8.0+  76.0 
#> [661]  67.0   12.0    8.0   26.0   53.0    7.0+   0.5   69.0    2.0   15.0+
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
#>   0.8379298 
```
