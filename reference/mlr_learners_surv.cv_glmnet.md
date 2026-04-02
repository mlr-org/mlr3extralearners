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
#> min 0.00380    44   2.838 0.1484       6
#> 1se 0.07466    12   2.978 0.1431       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  38  13      1          0        1   161
#>   [7,]  38   2      0        115        0   150
#>   [8,]  36   1      0        180        1   155
#>   [9,]  38  12      1          8        1   120
#>  [10,]  38  16      1         10        0   160
#>  [11,]  40  12      1          9        0   153
#>  [12,]  42   3      1          1        1   130
#>  [13,]  37   1      1          0        1   146
#>  [14,]  38   5      1          3        0   125
#>  [15,]  40   6      0        180        1   138
#>  [16,]  42   2      0        180        0   100
#>  [17,]  40   1      1          0        1   145
#>  [18,]  43   4      1          0        1   130
#>  [19,]  42   4      0        180        0   162
#>  [20,]  42  15      1         13        1   125
#>  [21,]  40   3      1          1        0   170
#>  [22,]  42  12      1         10        1   170
#>  [23,]  43   2      1          1        1   116
#>  [24,]  42   2      0        180        1   124
#>  [25,]  44   5      1          1        0   170
#>  [26,]  45   3      0        180        1   154
#>  [27,]  41  10      1          8        0   150
#>  [28,]  44   3      0        180        0   141
#>  [29,]  45   9      1          7        0   110
#>  [30,]  41   5      1          4        1   141
#>  [31,]  44   2      1          1        1   150
#>  [32,]  43   2      0        180        1   140
#>  [33,]  45   2      0        180        1   140
#>  [34,]  46  15      0        180        0   120
#>  [35,]  46   2      1          1        0   126
#>  [36,]  48  15      0        180        1   160
#>  [37,]  45   3      0        150        0   130
#>  [38,]  44   3      1          0        1   180
#>  [39,]  46   7      1          2        0   166
#>  [40,]  43  29      0        180        1   180
#>  [41,]  43  10      0        180        0   185
#>  [42,]  47   6      1          0        1   116
#>  [43,]  45   8      1          0        1   117
#>  [44,]  45   5      0          5        0   141
#>  [45,]  46   2      1          1        1   122
#>  [46,]  46   6      1          0        1   100
#>  [47,]  46   5      1          3        0   130
#>  [48,]  46   4      0        180        1   121
#>  [49,]  44   2      0        180        0   142
#>  [50,]  46  15      0        180        1   120
#>  [51,]  45   9      1          0        1   145
#>  [52,]  47   3      1          1        1   120
#>  [53,]  48   3      0        180        0   154
#>  [54,]  48  12      1         11        0   200
#>  [55,]  47   9      1          6        0   170
#>  [56,]  46   3      1          0        1   119
#>  [57,]  49   4      0        180        0   117
#>  [58,]  50   1      1          0        1   129
#>  [59,]  48   2      1          0        0   184
#>  [60,]  46   9      1          9        1   122
#>  [61,]  50   7      0        180        1   110
#>  [62,]  51   1      0          1        1   145
#>  [63,]  49  15      1         11        1   160
#>  [64,]  46   6      1          0        1   156
#>  [65,]  50   4      0          4        1   100
#>  [66,]  51   3      1          2        0   113
#>  [67,]  50   1      1          0        0   150
#>  [68,]  49   7      1          4        1    90
#>  [69,]  47   8      0        180        0   160
#>  [70,]  47   6      0        180        1   162
#>  [71,]  51   8      0        180        1   140
#>  [72,]  46   3      0        180        1   120
#>  [73,]  46   1      1          1        0   145
#>  [74,]  50   4      1          1        0   150
#>  [75,]  48   7      1          0        1   110
#>  [76,]  47   2      1          1        0   110
#>  [77,]  52   4      1          4        0   152
#>  [78,]  49   9      1          3        0   102
#>  [79,]  49  15      0        180        1   160
#>  [80,]  54  17      1         12        1   102
#>  [81,]  53   7      1          0        0   199
#>  [82,]  54   6      1          3        0   129
#>  [83,]  50  10      1          6        0   122
#>  [84,]  50  14      1         13        0   170
#>  [85,]  48   3      1          2        0   150
#>  [86,]  51  25      1          1        0   202
#>  [87,]  52  14      1          7        1   200
#>  [88,]  48   6      0        180        0   160
#>  [89,]  48  11      1         10        0   120
#>  [90,]  53   4      1          0        1   156
#>  [91,]  51  13      0         99        1   160
#>  [92,]  49  16      0         16        0   125
#>  [93,]  54  23      1         10        0   131
#>  [94,]  52   7      1          2        0   154
#>  [95,]  54   9      1          1        0   130
#>  [96,]  55   4      1          2        0   150
#>  [97,]  52   4      0        180        1   180
#>  [98,]  51  13      1         11        0   145
#>  [99,]  54   4      1          0        1   121
#> [100,]  52   4      0        180        0   183
#> [101,]  55  28      1         13        1   160
#> [102,]  49   6      1          0        1   130
#> [103,]  49   1      0          1        1   110
#> [104,]  50   7      1          1        0   156
#> [105,]  53   9      0          9        1    95
#> [106,]  50   7      1          0        1   127
#> [107,]  56   4      1          1        1   130
#> [108,]  52   5      0        175        1   117
#> [109,]  55   2      0          2        0   145
#> [110,]  54   1      0        180        0   162
#> [111,]  54   7      1          0        1   100
#> [112,]  56   2      0        180        0   132
#> [113,]  52   8      0        180        0   119
#> [114,]  53  18      1          9        1   150
#> [115,]  54   3      0        180        1   180
#> [116,]  55   6      0        180        0   170
#> [117,]  52  16      0         16        0   152
#> [118,]  52  16      1         14        0   170
#> [119,]  53   4      0        180        1   150
#> [120,]  55   6      0        180        1   100
#> [121,]  55   6      1          5        1   138
#> [122,]  54  12      1          0        1   190
#> [123,]  55   2      0        134        1   140
#> [124,]  56   3      0          8        1   139
#> [125,]  55   1      0          2        0   130
#> [126,]  57   3      0          3        0   120
#> [127,]  54   7      1          2        0   129
#> [128,]  54   2      1          1        0   135
#> [129,]  54   2      1          1        1   176
#> [130,]  57   1      0        180        1   156
#> [131,]  56   4      1          0        1   140
#> [132,]  52   2      0        180        0   140
#> [133,]  56  14      1         11        0   130
#> [134,]  53   3      1          0        1   200
#> [135,]  54   5      0        180        1   108
#> [136,]  53  21      1         13        1   130
#> [137,]  59   3      1          1        0   172
#> [138,]  57   4      0        180        1   119
#> [139,]  58   6      1          0        1    90
#> [140,]  53  15      1         10        1   130
#> [141,]  55   9      1          2        1   147
#> [142,]  56   5      0          5        1   150
#> [143,]  54  23      1          8        0   120
#> [144,]  57   4      1          2        1   185
#> [145,]  53   4      0        147        1   145
#> [146,]  57  11      1         10        1   129
#> [147,]  55   5      0          5        1   131
#> [148,]  56   4      0          4        0   164
#> [149,]  59  15      1         10        0   140
#> [150,]  55   5      1          0        0   140
#> [151,]  56   7      1          5        1   120
#> [152,]  55   2      0          2        0   106
#> [153,]  59   9      1          1        1   125
#> [154,]  57   1      0        180        0   148
#> [155,]  60  11      1          9        0   106
#> [156,]  59   3      0        180        0   120
#> [157,]  58   4      1          0        1   160
#> [158,]  57   2      0          2        1   120
#> [159,]  60   5      1          1        0   138
#> [160,]  57   5      0        180        1   130
#> [161,]  58  11      1          9        1   124
#> [162,]  55   5      1          0        1   160
#> [163,]  58  26      1          0        1   189
#> [164,]  60   0      1          0        1    80
#> [165,]  59   2      1          1        0   140
#> [166,]  58   8      0        161        1   140
#> [167,]  58  14      1          6        0   190
#> [168,]  61   4      1          3        0   151
#> [169,]  61   3      1          2        1   102
#> [170,]  61  20      1         13        0   130
#> [171,]  57  13      1         10        0   110
#> [172,]  57   2      1          0        1   116
#> [173,]  58  10      0         10        1   150
#> [174,]  57   4      1          3        0   138
#> [175,]  57  11      0        180        1   150
#> [176,]  61   3      0         17        0   143
#> [177,]  56  14      0         45        0   130
#> [178,]  57   3      1          2        0   120
#> [179,]  56  13      1          6        1   158
#> [180,]  59   9      1          0        1    80
#> [181,]  60  12      1          0        1   114
#> [182,]  55   9      1          7        1   135
#> [183,]  61   4      1          0        1   115
#> [184,]  56   8      1          8        0   120
#> [185,]  61  13      1         12        1   130
#> [186,]  57  15      1         13        1   110
#> [187,]  59   5      1          2        0   182
#> [188,]  58   5      1          1        1   135
#> [189,]  59  10      0        180        0   160
#> [190,]  61   8      0         77        0   120
#> [191,]  61  13      0         13        0   210
#> [192,]  62  10      1          0        1   153
#> [193,]  62   7      1          2        1   180
#> [194,]  57   3      1          0        0   100
#> [195,]  61  18      0        170        0   140
#> [196,]  61  28      1          7        0   133
#> [197,]  58   8      1          3        1   150
#> [198,]  57   7      0        169        0   180
#> [199,]  61   7      0          7        1   150
#> [200,]  60   7      0          7        0   147
#> [201,]  61   6      0          6        0   134
#> [202,]  59  13      1          2        0   198
#> [203,]  62   4      1          0        0   160
#> [204,]  60  17      1          8        1   140
#> [205,]  58   3      1          0        1   146
#> [206,]  62   4      1          3        0   173
#> [207,]  58   2      0         30        0   202
#> [208,]  63   6      0         28        1   120
#> [209,]  61  13      0         13        0   120
#> [210,]  57  18      1          9        1    93
#> [211,]  58  11      1          9        0   179
#> [212,]  62  17      1         10        1   180
#> [213,]  63   3      1          1        0   180
#> [214,]  63   1      0        180        1   130
#> [215,]  61   7      0        180        0   135
#> [216,]  63   4      1          1        0   155
#> [217,]  61   9      1          9        1   150
#> [218,]  58   9      1          9        0   110
#> [219,]  59   1      0         22        1   162
#> [220,]  58   2      0        180        0   127
#> [221,]  60   7      1          5        1   141
#> [222,]  59   5      1          1        0   148
#> [223,]  60   7      1          1        1    90
#> [224,]  65  13      0        180        1   100
#> [225,]  63   1      0          1        0   130
#> [226,]  61  15      1         13        0   170
#> [227,]  60   3      0          3        0   168
#> [228,]  63  12      1         10        0   200
#> [229,]  61   6      1          1        1   117
#> [230,]  66   1      1          0        1   120
#> [231,]  63  10      1          0        1   148
#> [232,]  63  14      1          9        0   123
#> [233,]  61  10      1          2        1   194
#> [234,]  63  12      1          9        0   114
#> [235,]  63   7      0        180        0   120
#> [236,]  66   5      1          0        1   110
#> [237,]  65   8      1          0        0   168
#> [238,]  64  21      1         10        0   190
#> [239,]  61  12      1         11        0   154
#> [240,]  64   9      0        180        0   150
#> [241,]  61   4      0        180        1   113
#> [242,]  65   3      0        180        1   190
#> [243,]  64   7      0        180        1   120
#> [244,]  66   6      1          1        1   130
#> [245,]  63  12      0         12        1   150
#> [246,]  65   6      0          9        0   112
#> [247,]  65   3      1          0        1    80
#> [248,]  63   5      1          4        0   170
#> [249,]  63   2      1          1        0   180
#> [250,]  64   2      0          2        0   201
#> [251,]  66  16      1         11        1   169
#> [252,]  62   9      0        180        0   145
#> [253,]  61  15      1         10        0   130
#> [254,]  63   9      1          8        1   160
#> [255,]  63   3      1          2        0   120
#> [256,]  63   2      1          0        0   140
#> [257,]  64  19      1          8        1   160
#> [258,]  67   6      0        180        1   170
#> [259,]  65  15      1         11        1   160
#> [260,]  68   5      1          4        1   150
#> [261,]  64  13      1         12        1   150
#> [262,]  64   6      1          0        1   125
#> [263,]  66   7      1          0        1   115
#> [264,]  66  13      1          0        0   118
#> [265,]  64  14      1         13        1   150
#> [266,]  64   0      0          0        1   148
#> [267,]  66   3      1          0        1   135
#> [268,]  66   6      1          0        1   140
#> [269,]  65   2      1          1        1   170
#> [270,]  63   7      1          0        0   162
#> [271,]  63  10      0         16        1   160
#> [272,]  66  14      0        180        0   130
#> [273,]  64   1      0          1        1   120
#> [274,]  68  18      0        180        1   260
#> [275,]  65  17      1         14        1   100
#> [276,]  63   8      1          1        1   162
#> [277,]  65  18      1          3        0   120
#> [278,]  63  10      0         18        1   130
#> [279,]  68  11      0        180        0   160
#> [280,]  66  12      1         10        1   150
#> [281,]  66  11      1          0        0   100
#> [282,]  65   4      1          2        1   145
#> [283,]  69  12      0         15        1   140
#> [284,]  66  15      1         13        1   160
#> [285,]  65  11      1          6        0   130
#> [286,]  69  21      1         10        0   180
#> [287,]  66   9      1          8        0   130
#> [288,]  63   8      0        180        1   120
#> [289,]  68  14      1         13        1   140
#> [290,]  65   8      1          0        1    90
#> [291,]  66   3      0          3        1   138
#> [292,]  67   1      0        180        1   160
#> [293,]  68  10      1         10        1   150
#> [294,]  65   1      1          0        0   133
#> [295,]  67   7      1          4        1   130
#> [296,]  63   2      1          0        0    99
#> [297,]  65   6      0          6        0    80
#> [298,]  65  10      1          1        1   148
#> [299,]  67  12      1         12        0   160
#> [300,]  69   6      0         99        1   140
#> [301,]  65   4      1          1        0   130
#> [302,]  64   4      0        179        0   160
#> [303,]  66   4      0        180        1   130
#> [304,]  70  15      1         12        1   132
#> [305,]  64  11      0         11        0   125
#> [306,]  64   4      0        180        1   140
#> [307,]  64   0      1          0        1   118
#> [308,]  67   2      0         18        0   131
#> [309,]  66   7      1          5        1   131
#> [310,]  66   4      0        180        0   177
#> [311,]  69   4      1          3        1   150
#> [312,]  65  13      1         12        1   130
#> [313,]  69  17      1         10        0   140
#> [314,]  64  21      0         21        1   155
#> [315,]  66   6      0        180        0   140
#> [316,]  68  18      1          0        1   160
#> [317,]  65   6      0        101        1   115
#> [318,]  68   4      0          4        1   190
#> [319,]  71   3      0          5        0   112
#> [320,]  68   7      0        150        0   210
#> [321,]  67   2      0        180        0   128
#> [322,]  66   9      1          3        1   151
#> [323,]  66   1      1          1        1   165
#> [324,]  70   4      1          0        1   180
#> [325,]  69   8      0        180        1   153
#> [326,]  67  10      1          9        0   200
#> [327,]  67   6      1          4        0   130
#> [328,]  68  18      1         14        1   170
#> [329,]  69   0      0          0        1   148
#> [330,]  65   2      0        180        0   130
#> [331,]  68   7      1          0        1   150
#> [332,]  69   3      1          2        0   151
#> [333,]  65  14      1         13        1   150
#> [334,]  69   8      0        180        1   180
#> [335,]  71   7      0          7        0   230
#> [336,]  71   3      0        103        0   133
#> [337,]  69   3      0          3        1   130
#> [338,]  68   6      0        180        0   145
#> [339,]  69   8      1          5        1   195
#> [340,]  72   3      1          0        1   132
#> [341,]  72   7      0          7        1   110
#> [342,]  69   8      1          7        1   108
#> [343,]  67   3      0        180        0   110
#> [344,]  69  19      0        180        0   130
#> [345,]  68  18      0         18        1   100
#> [346,]  69  11      1          0        1   120
#> [347,]  66   2      0        180        0   130
#> [348,]  67   7      1          4        0   122
#> [349,]  68   2      0          7        1   130
#> [350,]  70   3      0        123        0   130
#> [351,]  70   9      0        180        1   142
#> [352,]  67  22      1          1        1   140
#> [353,]  68   3      0         19        0   135
#> [354,]  67  12      1          8        0   120
#> [355,]  69   1      0          1        1   110
#> [356,]  67   1      0          1        1    60
#> [357,]  69   5      0         76        0   120
#> [358,]  67   8      1          0        1   130
#> [359,]  72  13      1         11        1   195
#> [360,]  68  10      1          8        1   160
#> [361,]  70  35      1          0        1   105
#> [362,]  71   6      0          9        0   120
#> [363,]  69  10      1          6        1   120
#> [364,]  72  19      1          8        0   120
#> [365,]  72  12      1         10        0   170
#> [366,]  67   8      0        180        1   170
#> [367,]  67   5      1          0        1   147
#> [368,]  73  13      0        152        1   130
#> [369,]  70   5      0        180        0   150
#> [370,]  72   2      0          2        1   100
#> [371,]  67   4      1          1        0   134
#> [372,]  70   3      0        180        0   121
#> [373,]  71   3      1          2        0   150
#> [374,]  68   4      1          3        0   210
#> [375,]  71   5      0        180        0   191
#> [376,]  73   6      0        180        1   117
#> [377,]  69   8      1          1        0   164
#> [378,]  68   7      0        180        1   130
#> [379,]  72  16      1          1        1   130
#> [380,]  69   1      1          0        0   155
#> [381,]  72   8      1          1        1   150
#> [382,]  71   2      1          0        1   180
#> [383,]  68  15      1         13        1   130
#> [384,]  70   3      0          3        1   159
#> [385,]  70  13      1          9        0   100
#> [386,]  72   6      0        180        1   130
#> [387,]  74   8      1          0        1    85
#> [388,]  69   2      1          0        1   110
#> [389,]  71   3      1          1        0   150
#> [390,]  71  15      1         11        0   165
#> [391,]  74  20      0         20        1   180
#> [392,]  68   9      0        180        1   120
#> [393,]  74   0      1          0        1    90
#> [394,]  73   3      1          0        1   136
#> [395,]  70   5      1          0        1   190
#> [396,]  71  17      1         11        0   160
#> [397,]  71   8      1          7        0   149
#> [398,]  71   3      1          2        1   190
#> [399,]  74   4      0          4        0   120
#> [400,]  73   4      0         58        1   160
#> [401,]  72   5      1          3        1   160
#> [402,]  73   6      0        180        0   110
#> [403,]  72  15      1          0        1   150
#> [404,]  71   7      1          2        0   143
#> [405,]  72   8      1          0        1   140
#> [406,]  73  17      1         11        0   140
#> [407,]  71  13      1          8        0   121
#> [408,]  69   2      1          1        1    80
#> [409,]  70   4      1          0        1   140
#> [410,]  74   7      1          0        1   117
#> [411,]  72  10      1          8        1   153
#> [412,]  69   7      0        180        1   144
#> [413,]  70   8      0          8        0   120
#> [414,]  75   1      0          1        0   133
#> [415,]  75   2      1          1        0   145
#> [416,]  73  10      1          9        1   146
#> [417,]  72  10      1          9        1   160
#> [418,]  73  10      1         10        1   120
#> [419,]  73   1      0          1        1    80
#> [420,]  75   9      1          7        0   140
#> [421,]  75  13      1          1        1   130
#> [422,]  72  15      1         12        1   120
#> [423,]  73  10      1          8        0   120
#> [424,]  70   7      1          4        0   184
#> [425,]  72   1      1          1        0   168
#> [426,]  72   7      0         57        1   145
#> [427,]  72  11      0         11        1   140
#> [428,]  70   3      0          3        0   150
#> [429,]  73  12      1         12        1   140
#> [430,]  75   1      0        180        1   140
#> [431,]  71   3      1          0        0   144
#> [432,]  73   4      0        180        0   124
#> [433,]  74  34      1          8        1   233
#> [434,]  71  32      1         12        1   107
#> [435,]  72   3      0        180        0   160
#> [436,]  76   5      0          5        1   130
#> [437,]  77  11      0         11        1   150
#> [438,]  77   4      0          4        0   185
#> [439,]  75   3      1          1        0   180
#> [440,]  73  15      0         15        1   160
#> [441,]  73  10      1         10        0   124
#> [442,]  74   7      0        180        1   150
#> [443,]  74   3      0          3        1   128
#> [444,]  76   1      0        180        0   114
#> [445,]  76   8      1          0        1   141
#> [446,]  73   6      0          6        1   114
#> [447,]  72   4      0         85        1   120
#> [448,]  73   4      1          3        1   125
#> [449,]  76  13      1         10        0   110
#> [450,]  75   4      1          0        1   122
#> [451,]  75   7      0          7        0   190
#> [452,]  73  13      1         11        0   195
#> [453,]  74   8      1          0        1   105
#> [454,]  76  13      1          8        1   148
#> [455,]  76   4      0          4        1   155
#> [456,]  75   1      0          1        1   125
#> [457,]  74   2      0        180        0   111
#> [458,]  73   1      0         52        1   105
#> [459,]  73   0      0        180        0   156
#> [460,]  78  12      1         11        1   160
#> [461,]  76  44      1         10        0   105
#> [462,]  76   5      0        180        0   185
#> [463,]  77  12      1          9        1   100
#> [464,]  73  10      1          9        0   146
#> [465,]  77   1      1          0        1    90
#> [466,]  76  12      1         11        1   120
#> [467,]  78   5      1          0        1   170
#> [468,]  73   7      1          0        0   174
#> [469,]  74   6      0         79        1   140
#> [470,]  74   9      1          8        0   200
#> [471,]  75   6      0        180        0   150
#> [472,]  79  10      1          8        0   190
#> [473,]  78  18      0         18        1   144
#> [474,]  77   3      0        180        0   110
#> [475,]  76  29      0         47        0    90
#> [476,]  73   8      1          1        1   162
#> [477,]  73  11      1          2        1   110
#> [478,]  74   2      0        180        0   100
#> [479,]  78   8      1          6        1   110
#> [480,]  74   7      0          7        0   161
#> [481,]  76  13      1          1        1   170
#> [482,]  79   6      0        180        0   170
#> [483,]  80  10      1          6        1   147
#> [484,]  78  13      1          5        0   130
#> [485,]  75  12      1          1        1   120
#> [486,]  78  15      0        180        1   270
#> [487,]  80   8      0          8        1   120
#> [488,]  79   4      0         80        0   145
#> [489,]  78   2      1          1        0   130
#> [490,]  75   4      1          0        0   212
#> [491,]  77   2      1          0        1   143
#> [492,]  78  10      0        180        1   130
#> [493,]  76  11      1          0        0   120
#> [494,]  75  11      1          4        0   162
#> [495,]  75   3      0          3        0     0
#> [496,]  76   7      0         29        1   150
#> [497,]  77  24      0         24        1   160
#> [498,]  79   8      0         32        1   120
#> [499,]  80   9      0         23        1   128
#> [500,]  78   6      1          0        1   240
#> [501,]  76   3      1          0        1   140
#> [502,]  78  11      1          1        1   140
#> [503,]  78  14      1          0        1   140
#> [504,]  81   1      0          1        0   130
#> [505,]  78  11      1          8        1   118
#> [506,]  76   4      0          4        1   160
#> [507,]  79   4      0          4        1   125
#> [508,]  76  12      1         10        1   127
#> [509,]  77   6      0          6        1   107
#> [510,]  80   3      1          0        1   120
#> [511,]  76   1      0          1        1   140
#> [512,]  77  31      1          3        1   161
#> [513,]  76   1      0          1        1    90
#> [514,]  77   6      0          6        1   144
#> [515,]  79   4      1          0        1   120
#> [516,]  80  15      1         12        1   150
#> [517,]  77   9      1          4        0   141
#> [518,]  82   5      0          8        1   120
#> [519,]  80  40      1          0        1   138
#> [520,]  78   4      0         59        1   112
#> [521,]  80  17      1         12        0   100
#> [522,]  76   7      0        161        0   151
#> [523,]  78  32      0        180        1   130
#> [524,]  81   3      0        180        0   184
#> [525,]  77  13      1          0        1   190
#> [526,]  78  15      0         15        0   165
#> [527,]  80   5      1          1        1   108
#> [528,]  78   4      0        180        0   175
#> [529,]  79   3      0          3        1   101
#> [530,]  76   1      0        166        0   131
#> [531,]  81   4      1          1        1   104
#> [532,]  80   1      0          1        0   100
#> [533,]  78   3      1          1        1   152
#> [534,]  82   3      1          1        1   144
#> [535,]  77   5      0         85        0   188
#> [536,]  80   2      1          1        0   168
#> [537,]  80   6      1          0        1   119
#> [538,]  78   2      0        180        0   148
#> [539,]  80   5      0          5        1   130
#> [540,]  79  10      0        180        1   150
#> [541,]  81   1      0        108        0   129
#> [542,]  78  12      0        180        0   134
#> [543,]  79   1      0        125        0   193
#> [544,]  82  21      1          2        0   155
#> [545,]  84  22      1         10        0   180
#> [546,]  79   4      0          4        1   121
#> [547,]  82   5      0        180        0   110
#> [548,]  83   5      0        180        0   148
#> [549,]  79   4      0          4        1   183
#> [550,]  78   9      1          4        1   120
#> [551,]  82   8      1          1        0   128
#> [552,]  79   1      0        180        1   170
#> [553,]  81  15      0        180        1   140
#> [554,]  84   5      1          1        1    85
#> [555,]  81  20      1          9        0   170
#> [556,]  81  16      0         16        1   110
#> [557,]  80   6      1          0        1   150
#> [558,]  80  11      1          8        0   110
#> [559,]  81   8      0        180        0   146
#> [560,]  79   7      0        177        0   197
#> [561,]  79   0      1          0        1    96
#> [562,]  82  23      1          0        0   110
#> [563,]  84   5      0        180        1   203
#> [564,]  81   1      0          1        1   150
#> [565,]  84   1      0         38        1   205
#> [566,]  83   3      0        180        0   174
#> [567,]  81   4      0         90        1   138
#> [568,]  79   9      1          8        0   150
#> [569,]  80  13      1          8        1   140
#> [570,]  84   4      0         89        1   129
#> [571,]  79   4      0          4        1    60
#> [572,]  80   6      0         71        1   189
#> [573,]  83   1      0          1        1   100
#> [574,]  80  30      1         13        0   220
#> [575,]  83   3      0        114        0    98
#> [576,]  83   2      0        154        0   130
#> [577,]  82   0      0          2        1   100
#> [578,]  81   4      0          4        0   175
#> [579,]  81  12      0         12        1   163
#> [580,]  82  16      1          8        0   103
#> [581,]  82   5      1          0        1   146
#> [582,]  81   4      0          4        0   160
#> [583,]  86  12      0        180        1   120
#> [584,]  83  12      1          2        1   170
#> [585,]  81  19      1         14        0   120
#> [586,]  82   3      1          2        0   130
#> [587,]  80   2      0         88        0   135
#> [588,]  83   7      0        126        0   135
#> [589,]  86   8      0          8        1   132
#> [590,]  81  16      1          9        0   180
#> [591,]  84   6      0        165        0   145
#> [592,]  86   3      0          3        1   140
#> [593,]  82   9      0        180        1   134
#> [594,]  81  13      0        180        0   152
#> [595,]  81   2      1          0        1   118
#> [596,]  83   9      0        180        1   149
#> [597,]  82   1      0        180        1   193
#> [598,]  83   4      0          4        0   130
#> [599,]  87   2      0          5        1   137
#> [600,]  86  12      1          0        1   132
#> [601,]  84  16      0         70        1   150
#> [602,]  84   3      1          2        0   125
#> [603,]  83  10      1          0        1   190
#> [604,]  88  14      1          3        1   130
#> [605,]  84   3      0          3        1   121
#> [606,]  83  13      1         12        0   170
#> [607,]  84   7      1          2        0   148
#> [608,]  84   9      0         92        1   110
#> [609,]  86  13      0        177        0   163
#> [610,]  85   3      0          3        1   113
#> [611,]  86   6      0          6        1   117
#> [612,]  84  13      0         62        1   100
#> [613,]  88   4      0          4        0   100
#> [614,]  83  20      1          3        1   150
#> [615,]  88   4      0          4        1   115
#> [616,]  85  22      0         22        1   184
#> [617,]  83   9      0         65        1   150
#> [618,]  86   6      0         46        0   173
#> [619,]  88   3      0        115        0   110
#> [620,]  88   2      0        180        1    68
#> [621,]  87   8      0          8        1   157
#> [622,]  86  15      1          8        1   109
#> [623,]  88   4      0          4        0    86
#> [624,]  87   6      0        180        1   110
#> [625,]  87   1      0          1        0   170
#> [626,]  84   8      0        180        1   119
#> [627,]  85   8      0          8        1   136
#> [628,]  87  29      0         29        1    97
#> [629,]  87  15      1          9        1   138
#> [630,]  89  10      0         46        1   170
#> [631,]  90  14      0         14        1   100
#> [632,]  86   4      0        180        1   145
#> [633,]  91   8      0          8        0   100
#> [634,]  87   2      0        180        0   160
#> [635,]  87   6      1          0        0   125
#> [636,]  86   3      1          0        1    80
#> [637,]  88   7      0         24        0   119
#> [638,]  88   8      0         50        1   154
#> [639,]  90  11      1         10        1   186
#> [640,]  87   6      0        126        1   168
#> [641,]  90   4      1          0        0   121
#> [642,]  91   1      0          1        1    74
#> [643,]  87  43      0        178        1   130
#> [644,]  87   5      0         36        1   150
#> [645,]  89   3      1          1        1   160
#> [646,]  92   1      0          1        1   167
#> [647,]  91   3      0         33        1   137
#> [648,]  88   5      0        158        0   100
#> [649,]  87   7      0         74        1   105
#> [650,]  89  12      1          0        1   130
#> [651,]  89   2      0        168        0   118
#> [652,]  92   7      0          7        1   110
#> [653,]  89   4      0          4        1   159
#> [654,]  91   0      0          0        0     0
#> [655,]  89  14      0        180        1    84
#> [656,]  90  18      0        180        0   188
#> [657,]  91   4      1          0        1   120
#> [658,]  90  19      1         11        1   129
#> [659,]  91   2      0          2        1   116
#> [660,]  93   8      0        179        1   110
#> [661,]  92   4      0         76        1   149
#> [662,]  90   3      0         67        0   162
#> [663,]  96   3      0         12        1    97
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91   7      0          7        0   135
#> [667,]  92   5      0         69        0   139
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+ 180.0+   5.0+ 180.0+ 115.0  180.0+  12.0  180.0+
#>  [11] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+
#>  [41] 180.0+   6.0+ 180.0+   5.0+ 161.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+
#>  [51] 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 172.0+ 180.0+ 180.0+
#>  [61] 180.0+   1.0  179.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+   4.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+ 180.0+ 166.0+
#>  [91]  99.0   16.0+ 152.0+   7.0+ 180.0+ 180.0+ 180.0+  13.0+ 180.0+ 180.0+
#> [101]  28.0    6.0+   1.0  180.0+   9.0+ 180.0+ 180.0+ 175.0+   2.0  180.0+
#> [111]   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+  16.0  180.0+ 180.0+
#> [121] 180.0+  12.0+ 134.0+   8.0    2.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [131] 165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [141]  15.0    5.0+ 180.0+   4.0+ 147.0+ 180.0+   5.0+   4.0+ 180.0+ 180.0+
#> [151] 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+   0.5  180.0+ 161.0+ 171.0+ 180.0+   3.0  180.0+
#> [171] 180.0+ 180.0+  10.0+ 180.0+ 180.0+  17.0   45.0    3.0+ 180.0+   9.0+
#> [181] 172.0+  24.0  180.0+   8.0  180.0+  15.0  180.0+ 180.0+ 180.0+  77.0 
#> [191]  13.0+ 180.0+ 180.0+ 180.0+ 170.0   94.0  180.0+ 169.0    7.0    7.0+
#> [201]   6.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+  30.0   28.0   13.0+  18.0 
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+   9.0   22.0  180.0+
#> [221]  84.0  180.0+ 180.0+ 180.0+   1.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+
#> [231] 180.0+  14.0+  88.0   12.0  180.0+ 180.0+ 180.0+ 180.0+  12.0+ 180.0+
#> [241] 180.0+ 180.0+ 180.0+ 180.0+  12.0    9.0    3.0  180.0+ 180.0+   2.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0  180.0+ 180.0+   5.0+
#> [261]  13.0  180.0+ 179.0+ 166.0+  14.0+   0.5+   3.0+ 180.0+ 175.0+   7.0+
#> [271]  16.0  180.0+   1.0  180.0+ 180.0+ 180.0+ 123.0+  18.0  180.0+  80.0 
#> [281] 180.0+   4.0+  15.0  180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [291]   3.0  180.0+  10.0  180.0+ 180.0+ 180.0+   6.0  180.0+  12.0   99.0 
#> [301] 180.0+ 179.0+ 180.0+ 180.0+  11.0+ 180.0+   0.5   18.0    7.0+ 180.0+
#> [311] 152.0+ 180.0+ 180.0+  21.0+ 180.0+  18.0+ 101.0    4.0    5.0  150.0 
#> [321] 180.0+ 180.0+   1.0  180.0+ 180.0+ 174.0+   6.0  180.0+   0.5  180.0+
#> [331] 180.0+ 180.0+  14.0+ 180.0+   7.0+ 103.0    3.0+ 180.0+ 180.0+ 180.0+
#> [341]   7.0    8.0+ 180.0+ 180.0+  18.0  180.0+ 180.0+   7.0    7.0  123.0 
#> [351] 180.0+  51.0   19.0  180.0+   1.0    1.0   76.0  180.0+ 132.0   10.0+
#> [361] 180.0+   9.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 152.0  180.0+   2.0 
#> [371]  76.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+
#> [381] 180.0+ 180.0+  15.0    3.0+  13.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+
#> [391]  20.0  180.0+   0.5  180.0+ 180.0+ 180.0+   8.0    3.0    4.0+  58.0 
#> [401] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 175.0    2.0  180.0+ 180.0+
#> [411]  10.0+ 180.0+   8.0+   1.0  180.0+ 180.0+ 159.0   15.0    1.0  180.0+
#> [421]  13.0  180.0+  10.0  104.0+   1.0   57.0   11.0    3.0+  12.0  180.0+
#> [431] 180.0+ 180.0+  34.0  177.0+ 180.0+   5.0   11.0+   4.0+ 180.0+  15.0+
#> [441]  10.0  180.0+   3.0  180.0+ 180.0+   6.0   85.0  180.0+ 174.0+   4.0 
#> [451]   7.0  180.0+ 180.0+ 180.0+   4.0    1.0  180.0+  52.0  180.0+  12.0 
#> [461] 180.0+ 180.0+ 180.0+ 180.0+   1.0   12.0  180.0+   7.0+  79.0  168.0+
#> [471] 180.0+ 180.0+  18.0  180.0+  47.0  180.0+  11.0  180.0+   8.0+   7.0 
#> [481] 180.0+ 180.0+  10.0  172.0   12.0  180.0+   8.0   80.0  180.0+   4.0+
#> [491]   2.0  180.0+  11.0  152.0+   3.0   29.0   24.0   32.0   23.0  180.0+
#> [501]   3.0+ 180.0+ 180.0+   1.0   11.0    4.0    4.0  180.0+   6.0    3.0+
#> [511]   1.0  171.0    1.0    6.0  138.0  180.0+  71.0    8.0   40.0   59.0 
#> [521]  17.0  161.0  180.0+ 180.0+  22.0   15.0+   5.0+ 180.0+   3.0  166.0+
#> [531]  71.0    1.0    3.0+ 180.0+  85.0   10.0    6.0  180.0+   5.0  180.0+
#> [541] 108.0  180.0+ 125.0  180.0+ 180.0+   4.0  180.0+ 180.0+   4.0  180.0+
#> [551] 180.0+ 180.0+ 180.0+ 180.0+  20.0   16.0  180.0+ 180.0+ 180.0+ 177.0+
#> [561]   0.5   62.0  180.0+   1.0   38.0  180.0+  90.0  180.0+ 180.0+  89.0 
#> [571]   4.0   71.0    1.0   30.0  114.0  154.0    2.0    4.0+  12.0   16.0+
#> [581]   5.0+   4.0+ 180.0+  77.0  180.0+   3.0   88.0  126.0    8.0  180.0+
#> [591] 165.0    3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0  180.0+
#> [601]  70.0  180.0+ 180.0+  14.0    3.0   13.0  180.0+  92.0  177.0    3.0+
#> [611]   6.0+  62.0    4.0+  20.0    4.0   22.0   65.0   46.0  115.0  180.0+
#> [621]   8.0+ 180.0+   4.0  180.0+   1.0+ 180.0+   8.0   29.0  180.0+  46.0 
#> [631]  14.0  180.0+   8.0  180.0+  25.0    3.0   24.0   50.0   11.0  126.0 
#> [641]   4.0    1.0  178.0+  36.0    3.0+   1.0   33.0  158.0   74.0  180.0+
#> [651] 168.0    7.0    4.0    0.5  180.0+ 180.0+   4.0  180.0+   2.0  179.0+
#> [661]  76.0   67.0   12.0    8.0   26.0    7.0+  69.0  180.0+   3.0   15.0+
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
#>   0.8406316 
```
