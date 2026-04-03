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
#> min 0.00346    45   2.902 0.1605       6
#> 1se 0.07460    12   3.046 0.1414       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  35  10      1          9        0   106
#>   [3,]  38  13      1          0        1   161
#>   [4,]  36   1      0        180        1   155
#>   [5,]  38  12      1          8        1   120
#>   [6,]  36   5      1          0        1   115
#>   [7,]  33   6      1          1        1   115
#>   [8,]  38  16      1         10        0   160
#>   [9,]  42   3      1          1        1   130
#>  [10,]  37   1      1          0        1   146
#>  [11,]  40   2      1          1        1   148
#>  [12,]  42   2      0        180        1   100
#>  [13,]  42   2      0          2        0   140
#>  [14,]  40   6      0        180        1   138
#>  [15,]  40  11      1         10        1   120
#>  [16,]  42   2      0        180        0   100
#>  [17,]  43   3      1          0        1   100
#>  [18,]  41   2      1          1        0   166
#>  [19,]  40   1      1          0        1   145
#>  [20,]  43   4      1          0        1   130
#>  [21,]  40   3      1          1        0   170
#>  [22,]  42  12      1         10        1   170
#>  [23,]  42   2      0        180        1   124
#>  [24,]  44   5      1          1        0   170
#>  [25,]  41  10      1          8        0   150
#>  [26,]  44   3      0        180        0   141
#>  [27,]  45   9      1          7        0   110
#>  [28,]  45   6      0        180        1   170
#>  [29,]  45   2      0        180        1   140
#>  [30,]  46  15      0        180        0   120
#>  [31,]  46   2      1          1        0   126
#>  [32,]  47   4      1          3        0   118
#>  [33,]  48  15      0        180        1   160
#>  [34,]  45   3      0        150        0   130
#>  [35,]  43  29      0        180        1   180
#>  [36,]  43  10      0        180        0   185
#>  [37,]  47   6      1          0        1   116
#>  [38,]  46  13      1         10        0   100
#>  [39,]  47   4      1          3        1   160
#>  [40,]  43   3      1          0        1   124
#>  [41,]  45   5      0          5        0   141
#>  [42,]  46   6      1          0        1   100
#>  [43,]  44   4      1          0        1   114
#>  [44,]  47   2      0        180        0   108
#>  [45,]  45   5      0        180        1   190
#>  [46,]  46   5      1          3        0   130
#>  [47,]  44   2      0        180        0   142
#>  [48,]  46  15      0        180        1   120
#>  [49,]  45   9      1          0        1   145
#>  [50,]  47   9      1          6        0   170
#>  [51,]  46   3      1          0        1   119
#>  [52,]  49   4      0        180        0   117
#>  [53,]  50   1      1          0        1   129
#>  [54,]  47   7      0        180        0   145
#>  [55,]  50   4      1          1        0   125
#>  [56,]  50   6      1          2        1   140
#>  [57,]  49   7      1          7        1   110
#>  [58,]  46   9      1          9        1   122
#>  [59,]  49   2      0          2        0   105
#>  [60,]  49  15      1         11        1   160
#>  [61,]  47   2      0        180        0   150
#>  [62,]  49  23      0        179        1   112
#>  [63,]  52   2      0        180        1   170
#>  [64,]  50   7      1          0        1    92
#>  [65,]  50   4      0          4        1   100
#>  [66,]  51   3      1          2        0   113
#>  [67,]  50   9      0        180        0   130
#>  [68,]  49   7      1          4        1    90
#>  [69,]  47   8      0        180        0   160
#>  [70,]  47   6      0        180        1   162
#>  [71,]  51   8      0        180        1   140
#>  [72,]  52   2      0        180        0   155
#>  [73,]  46   3      0        180        1   120
#>  [74,]  46   1      1          1        0   145
#>  [75,]  50   4      1          1        0   150
#>  [76,]  48   7      1          0        1   110
#>  [77,]  53   8      0         36        1   160
#>  [78,]  47   2      1          1        0   110
#>  [79,]  52   4      1          4        0   152
#>  [80,]  49   9      1          3        0   102
#>  [81,]  53   5      0        180        1   140
#>  [82,]  53   7      1          0        0   199
#>  [83,]  54   6      1          3        0   129
#>  [84,]  51   3      1          1        0   140
#>  [85,]  50  14      1         13        0   170
#>  [86,]  53   8      1          7        0   160
#>  [87,]  48   3      1          2        0   150
#>  [88,]  51  25      1          1        0   202
#>  [89,]  53   4      0          4        0   140
#>  [90,]  52  14      1          7        1   200
#>  [91,]  48  11      1         10        0   120
#>  [92,]  49  16      0         16        0   125
#>  [93,]  55   6      1          2        1   114
#>  [94,]  54   9      1          1        0   130
#>  [95,]  55   4      1          2        0   150
#>  [96,]  51  13      1         11        0   145
#>  [97,]  54   4      1          0        1   121
#>  [98,]  52   4      0        180        0   183
#>  [99,]  50   3      0        174        1   153
#> [100,]  49   1      0          1        1   110
#> [101,]  50   7      1          1        0   156
#> [102,]  53   9      0          9        1    95
#> [103,]  53   8      1          0        1   130
#> [104,]  56   4      1          1        1   130
#> [105,]  55   1      0        180        0   127
#> [106,]  55   2      0          2        0   145
#> [107,]  54   7      1          0        1   100
#> [108,]  56   3      0        180        1   193
#> [109,]  55   5      1          4        1   120
#> [110,]  52   8      0        180        0   119
#> [111,]  53  18      1          9        1   150
#> [112,]  52  16      0         16        0   152
#> [113,]  53  10      1          9        0   172
#> [114,]  53  15      0         15        1    90
#> [115,]  55   6      0        180        1   100
#> [116,]  55   1      0          2        0   130
#> [117,]  54   7      1          2        0   129
#> [118,]  54   2      1          1        0   135
#> [119,]  52   9      1          3        0   170
#> [120,]  57   1      0        180        1   156
#> [121,]  57   1      0          1        1   100
#> [122,]  52   2      0        180        0   140
#> [123,]  55  11      1          7        0   104
#> [124,]  52  15      1         14        0   130
#> [125,]  56  14      1         11        0   130
#> [126,]  53   3      1          0        1   200
#> [127,]  57  10      0        180        1   170
#> [128,]  58   8      0          8        1   130
#> [129,]  54   5      0        180        1   108
#> [130,]  53  21      1         13        1   130
#> [131,]  59   3      1          1        0   172
#> [132,]  58   6      1          0        1    90
#> [133,]  54  17      1          8        1   227
#> [134,]  55   9      1          2        1   147
#> [135,]  55  13      0        166        1   140
#> [136,]  56   5      0          5        1   150
#> [137,]  57   4      1          2        1   185
#> [138,]  53   4      0        147        1   145
#> [139,]  57  11      1         10        1   129
#> [140,]  55   3      1          2        0   140
#> [141,]  55   5      0          5        1   131
#> [142,]  54   7      1          0        1   141
#> [143,]  56   4      0          4        0   164
#> [144,]  59  15      1         10        0   140
#> [145,]  58   9      1          0        1   180
#> [146,]  55   5      1          0        0   140
#> [147,]  55   2      0          2        0   106
#> [148,]  59   9      1          1        1   125
#> [149,]  57   1      0        180        0   148
#> [150,]  59   3      0        180        0   120
#> [151,]  57   2      0          2        1   120
#> [152,]  57   5      0        180        1   130
#> [153,]  55   5      1          0        1   160
#> [154,]  57  10      1          9        0   103
#> [155,]  59   6      1          0        1   140
#> [156,]  59   5      0        180        1   155
#> [157,]  59   4      1          0        1   152
#> [158,]  58  26      1          0        1   189
#> [159,]  61   9      0          9        1   160
#> [160,]  58   4      1          3        0   120
#> [161,]  60   0      1          0        1    80
#> [162,]  58   8      0        161        1   140
#> [163,]  58  14      1          6        0   190
#> [164,]  61   4      1          3        0   151
#> [165,]  61   9      1          8        0   150
#> [166,]  61   3      1          2        1   102
#> [167,]  58   1      0          1        1   100
#> [168,]  61  20      1         13        0   130
#> [169,]  58  10      0         10        1   150
#> [170,]  57   4      1          3        0   138
#> [171,]  57  11      0        180        1   150
#> [172,]  61   3      0         17        0   143
#> [173,]  56  14      0         45        0   130
#> [174,]  57   3      1          2        0   120
#> [175,]  58  19      1         13        1   140
#> [176,]  56  13      1          6        1   158
#> [177,]  59   9      1          0        1    80
#> [178,]  58  11      0        172        1   135
#> [179,]  55   9      1          7        1   135
#> [180,]  56   8      1          8        0   120
#> [181,]  61  13      1         12        1   130
#> [182,]  57   1      0          1        0   126
#> [183,]  57  15      1         13        1   110
#> [184,]  59   5      1          2        0   182
#> [185,]  58   5      1          1        1   135
#> [186,]  59  10      0        180        0   160
#> [187,]  61   8      0         77        0   120
#> [188,]  61  13      0         13        0   210
#> [189,]  58   8      1          5        0   152
#> [190,]  62  10      1          0        1   153
#> [191,]  62   7      1          2        1   180
#> [192,]  57   3      1          0        0   100
#> [193,]  61  18      0        170        0   140
#> [194,]  61  28      1          7        0   133
#> [195,]  58   8      1          3        1   150
#> [196,]  61   7      0          7        1   150
#> [197,]  60   7      0          7        0   147
#> [198,]  61   6      0          6        0   134
#> [199,]  57  12      1          9        1   120
#> [200,]  60  17      1          8        1   140
#> [201,]  62   4      1          3        0   173
#> [202,]  59   1      0        180        0   155
#> [203,]  63   6      0         28        1   120
#> [204,]  61  13      0         13        0   120
#> [205,]  61   5      0          5        1   110
#> [206,]  57  18      1          9        1    93
#> [207,]  61   5      0          5        1   160
#> [208,]  57   2      1          1        0   159
#> [209,]  62   1      1          0        1   172
#> [210,]  63   3      1          1        0   180
#> [211,]  63   1      0        180        1   130
#> [212,]  61   7      0        180        0   135
#> [213,]  63   4      1          3        0   222
#> [214,]  62   3      0        180        1   105
#> [215,]  63   4      0        180        1   190
#> [216,]  63  15      1         10        1   126
#> [217,]  64   4      0        180        0   130
#> [218,]  60  18      1         13        0   132
#> [219,]  61   9      1          9        1   150
#> [220,]  58   9      1          9        0   110
#> [221,]  62   7      0          7        0   150
#> [222,]  59   1      0         22        1   162
#> [223,]  58   2      0        180        0   127
#> [224,]  59   4      0        180        0   196
#> [225,]  60   7      1          5        1   141
#> [226,]  59   5      1          1        0   148
#> [227,]  60   7      1          1        1    90
#> [228,]  65  13      0        180        1   100
#> [229,]  61  15      1         13        0   170
#> [230,]  59   4      0          4        0   149
#> [231,]  60   3      0          3        0   168
#> [232,]  64  10      1          9        0   160
#> [233,]  63  12      1         10        0   200
#> [234,]  59  10      0        180        1   130
#> [235,]  60   8      0         17        1   130
#> [236,]  61   6      1          1        1   117
#> [237,]  64  12      1         11        0   160
#> [238,]  64   6      1          0        1   140
#> [239,]  63  14      1          9        0   123
#> [240,]  63   4      1          3        0   162
#> [241,]  61  10      1          2        1   194
#> [242,]  64  32      1          9        1   160
#> [243,]  63   7      0        180        0   120
#> [244,]  66   5      1          0        1   110
#> [245,]  65  10      1          8        1   120
#> [246,]  64   0      0          0        1    90
#> [247,]  60   6      0        180        0   130
#> [248,]  64  21      1         10        0   190
#> [249,]  61  12      1         11        0   154
#> [250,]  64   9      0        180        0   150
#> [251,]  61   4      0        180        1   113
#> [252,]  65   3      0        180        1   190
#> [253,]  66   6      1          1        1   130
#> [254,]  62   3      1          1        1   199
#> [255,]  65   6      0          9        0   112
#> [256,]  65   3      1          0        1    80
#> [257,]  63   5      1          4        0   170
#> [258,]  64   2      0          2        0   201
#> [259,]  66  18      1          5        0   142
#> [260,]  66  16      1         11        1   169
#> [261,]  62   9      0        180        0   145
#> [262,]  61  15      1         10        0   130
#> [263,]  63   9      1          8        1   160
#> [264,]  63   2      1          0        0   140
#> [265,]  65   8      1          0        1   140
#> [266,]  67   6      0        180        1   170
#> [267,]  65  15      1         11        1   160
#> [268,]  64  13      1         12        1   150
#> [269,]  64   6      1          0        1   125
#> [270,]  66   7      1          0        1   115
#> [271,]  66  13      1          0        0   118
#> [272,]  64  14      1         13        1   150
#> [273,]  65   3      0          3        0   105
#> [274,]  64   0      0          0        1   148
#> [275,]  66   3      1          0        1   135
#> [276,]  66   6      1          0        1   140
#> [277,]  65   2      1          1        1   170
#> [278,]  63   7      1          0        0   162
#> [279,]  67   8      1          1        1   130
#> [280,]  68   5      0          5        1    90
#> [281,]  63  10      0         16        1   160
#> [282,]  66  14      0        180        0   130
#> [283,]  64   1      0          1        1   120
#> [284,]  68  18      0        180        1   260
#> [285,]  63   8      1          1        1   162
#> [286,]  63   1      1          0        1   155
#> [287,]  68  14      0         79        0   172
#> [288,]  65  15      1         12        1   150
#> [289,]  66  11      1          0        0   100
#> [290,]  66  15      1         13        1   160
#> [291,]  63   2      0        180        0   150
#> [292,]  63   8      0        180        1   120
#> [293,]  66   3      0          3        1   138
#> [294,]  69   1      1          0        0   170
#> [295,]  67   1      0        180        1   160
#> [296,]  68  10      1         10        1   150
#> [297,]  67   7      1          4        1   130
#> [298,]  63   2      1          0        0    99
#> [299,]  67   2      0        180        0   184
#> [300,]  65   6      0          6        0    80
#> [301,]  65  10      1          1        1   148
#> [302,]  66  19      1         12        1   150
#> [303,]  67  12      1         12        0   160
#> [304,]  69   6      0         99        1   140
#> [305,]  65   4      1          1        0   130
#> [306,]  64   4      0        179        0   160
#> [307,]  70  15      1         12        1   132
#> [308,]  64   4      0        180        1   140
#> [309,]  64   0      1          0        1   118
#> [310,]  67   2      0         18        0   131
#> [311,]  66   7      1          5        1   131
#> [312,]  68   4      1          0        1   160
#> [313,]  65  13      1         12        1   130
#> [314,]  69  17      1         10        0   140
#> [315,]  66   6      0        180        0   140
#> [316,]  65   1      0          1        1   120
#> [317,]  65   6      0        101        1   115
#> [318,]  71   3      0          5        0   112
#> [319,]  68   7      0        150        0   210
#> [320,]  67   2      0        180        0   128
#> [321,]  66   9      1          3        1   151
#> [322,]  70   4      1          0        1   180
#> [323,]  69   8      0        180        1   153
#> [324,]  70  14      0        171        0   166
#> [325,]  67  10      1          9        0   200
#> [326,]  67   6      1          4        0   130
#> [327,]  65   2      0        180        0   130
#> [328,]  68   7      1          0        1   150
#> [329,]  69   3      1          2        0   151
#> [330,]  67  14      1         13        0   130
#> [331,]  65  14      1         13        1   150
#> [332,]  69   8      0        180        1   180
#> [333,]  69   5      0          5        1   142
#> [334,]  71   3      0        103        0   133
#> [335,]  70  22      1         13        0   103
#> [336,]  67   1      0         36        1   104
#> [337,]  68   6      0        180        0   145
#> [338,]  69   6      1          4        1   174
#> [339,]  72   3      1          0        1   132
#> [340,]  72   7      0          7        1   110
#> [341,]  69   8      1          7        1   108
#> [342,]  67   3      0        180        0   110
#> [343,]  66   2      1          1        0   123
#> [344,]  68  18      0         18        1   100
#> [345,]  67  14      0        172        1   140
#> [346,]  67   7      1          4        0   122
#> [347,]  69   4      1          3        0   132
#> [348,]  69   8      1          2        0   121
#> [349,]  67  13      1          9        0   130
#> [350,]  70   3      0        123        0   130
#> [351,]  72   5      1          4        0   170
#> [352,]  68   3      0         19        0   135
#> [353,]  67  12      1          8        0   120
#> [354,]  67   4      0         60        1   136
#> [355,]  69   5      0         76        0   120
#> [356,]  67   8      1          0        1   130
#> [357,]  68  10      1          8        1   160
#> [358,]  70  35      1          0        1   105
#> [359,]  72  30      1          0        1   145
#> [360,]  73  20      1          0        1   170
#> [361,]  71   6      0          9        0   120
#> [362,]  69  10      1          6        1   120
#> [363,]  70  11      0        180        1   210
#> [364,]  67   8      0        180        1   170
#> [365,]  67   5      1          0        1   147
#> [366,]  72   2      0          2        1   100
#> [367,]  68  23      0        180        1   220
#> [368,]  71   3      1          2        0   150
#> [369,]  71   5      0        180        0   191
#> [370,]  73   6      0        180        1   117
#> [371,]  69  16      1         10        1   140
#> [372,]  69   8      1          1        0   164
#> [373,]  72  16      1          1        1   130
#> [374,]  70   4      0        180        0   180
#> [375,]  69   1      1          0        0   155
#> [376,]  73   6      1          0        1   270
#> [377,]  72   8      1          1        1   150
#> [378,]  73   7      0          7        1   140
#> [379,]  68  15      1         13        1   130
#> [380,]  70   3      0          3        1   159
#> [381,]  70  13      1          9        0   100
#> [382,]  72   6      0        180        1   130
#> [383,]  73   0      0        180        1   161
#> [384,]  74   8      1          0        1    85
#> [385,]  73   4      0        180        1   154
#> [386,]  71   3      1          1        0   150
#> [387,]  71  15      1         11        0   165
#> [388,]  74  20      0         20        1   180
#> [389,]  68   9      0        180        1   120
#> [390,]  71  20      1         10        0   140
#> [391,]  73   3      1          0        1   136
#> [392,]  70   5      1          0        1   190
#> [393,]  71   8      1          7        0   149
#> [394,]  73  10      1          8        0   106
#> [395,]  69  12      1          1        1   149
#> [396,]  70  26      1         11        1   120
#> [397,]  73   6      0        180        0   110
#> [398,]  72  15      1          0        1   150
#> [399,]  71   7      1          2        0   143
#> [400,]  69   2      1          1        1    80
#> [401,]  70   4      1          0        1   140
#> [402,]  74   7      1          0        1   117
#> [403,]  72  10      1          8        1   153
#> [404,]  69   7      0        180        1   144
#> [405,]  72  15      1         13        0   156
#> [406,]  71  10      1          9        1   120
#> [407,]  75   1      0          1        0   133
#> [408,]  75   2      1          1        0   145
#> [409,]  72  10      1          9        1   160
#> [410,]  73  10      1         10        1   120
#> [411,]  74  15      1          9        1   179
#> [412,]  71   2      0         10        1   112
#> [413,]  73   1      0          1        1    80
#> [414,]  75   9      1          7        0   140
#> [415,]  75  13      1          1        1   130
#> [416,]  72  15      1         12        1   120
#> [417,]  70   7      1          4        0   184
#> [418,]  72   1      1          1        0   168
#> [419,]  72   7      0         57        1   145
#> [420,]  73  10      0        180        0   162
#> [421,]  72  11      0         11        1   140
#> [422,]  70   3      0          3        0   150
#> [423,]  73  12      1         12        1   140
#> [424,]  72   2      0        180        0   120
#> [425,]  71   3      1          0        0   144
#> [426,]  73   5      0        180        0   126
#> [427,]  73   4      0        180        0   124
#> [428,]  74  34      1          8        1   233
#> [429,]  76   3      1          0        1   120
#> [430,]  71  32      1         12        1   107
#> [431,]  72   5      0        180        0   154
#> [432,]  72   3      0        180        0   160
#> [433,]  77  11      0         11        1   150
#> [434,]  77   4      0          4        0   185
#> [435,]  75   3      1          1        0   180
#> [436,]  72   7      1          2        0   142
#> [437,]  71  16      0        180        0   140
#> [438,]  74   7      0        180        1   150
#> [439,]  74   3      0          3        1   128
#> [440,]  74   2      1          1        0   140
#> [441,]  75  23      1         14        1   110
#> [442,]  74   2      0        180        0   190
#> [443,]  72   4      0         85        1   120
#> [444,]  72   4      1          3        0   160
#> [445,]  73   4      1          3        1   125
#> [446,]  76  13      1         10        0   110
#> [447,]  75   4      1          0        1   122
#> [448,]  73  13      1         11        0   195
#> [449,]  75  12      0         12        1   160
#> [450,]  75   4      1          2        1   188
#> [451,]  76   4      0          4        1   155
#> [452,]  75   1      0          1        1   125
#> [453,]  74   2      0        180        0   111
#> [454,]  78  12      1         11        1   160
#> [455,]  76  44      1         10        0   105
#> [456,]  76   5      0        180        0   185
#> [457,]  74  10      1          0        1   135
#> [458,]  76   5      1          0        1   167
#> [459,]  75   9      0        180        1   140
#> [460,]  77   5      1          0        0   123
#> [461,]  77  12      1          9        1   100
#> [462,]  73  10      1          9        0   146
#> [463,]  77   1      1          0        1    90
#> [464,]  76  12      1         11        1   120
#> [465,]  78   5      1          0        1   170
#> [466,]  75   3      1          1        1   171
#> [467,]  74   9      1          8        0   200
#> [468,]  75   6      0        180        0   150
#> [469,]  74   2      1          0        1   130
#> [470,]  78  18      0         18        1   144
#> [471,]  77   3      0        180        0   110
#> [472,]  76  29      0         47        0    90
#> [473,]  73   8      1          1        1   162
#> [474,]  73  11      1          2        1   110
#> [475,]  74   2      0        180        0   100
#> [476,]  78   8      1          6        1   110
#> [477,]  74   7      0          7        0   161
#> [478,]  78  32      1          9        1   198
#> [479,]  79   6      0        180        0   170
#> [480,]  80  10      1          6        1   147
#> [481,]  78  13      1          5        0   130
#> [482,]  75   5      0        119        1   150
#> [483,]  78  15      0        180        1   270
#> [484,]  80   8      0          8        1   120
#> [485,]  74  10      1          8        0   135
#> [486,]  76   1      0          1        1    83
#> [487,]  79   4      0         80        0   145
#> [488,]  78  12      1          9        0   150
#> [489,]  78   2      1          1        0   130
#> [490,]  75   4      1          0        0   212
#> [491,]  77   2      1          0        1   143
#> [492,]  78  10      0        180        1   130
#> [493,]  76  11      1          0        0   120
#> [494,]  77  24      0         24        1   160
#> [495,]  79   8      0         32        1   120
#> [496,]  76   3      1          0        1   140
#> [497,]  79   2      1          0        1   121
#> [498,]  81   1      0          1        0   130
#> [499,]  76   4      0          4        1   160
#> [500,]  79   4      0          4        1   125
#> [501,]  77   6      0          6        1   107
#> [502,]  75   2      1          1        1   204
#> [503,]  78  11      0        180        1   135
#> [504,]  77  31      1          3        1   161
#> [505,]  76   1      0          1        1    90
#> [506,]  78   7      1          0        1   110
#> [507,]  79   3      0          3        0   120
#> [508,]  77   7      0        180        1   170
#> [509,]  77   6      0          6        1   144
#> [510,]  80  15      1         12        1   150
#> [511,]  82   5      0          8        1   120
#> [512,]  78   4      0         59        1   112
#> [513,]  80  17      1         12        0   100
#> [514,]  79  10      0         10        1   120
#> [515,]  80  15      1          0        1    90
#> [516,]  80   9      0        118        1   186
#> [517,]  80   6      0        173        1   160
#> [518,]  79   1      0         37        1   140
#> [519,]  81   3      0        180        0   184
#> [520,]  81   2      0        175        0   172
#> [521,]  78  15      0         15        0   165
#> [522,]  79   3      0          3        1   101
#> [523,]  76   1      0        166        0   131
#> [524,]  81   4      1          1        1   104
#> [525,]  78  20      1          0        1   109
#> [526,]  78   3      1          1        1   152
#> [527,]  77  10      1          8        1   130
#> [528,]  80   2      1          1        0   168
#> [529,]  79   6      0          6        0   152
#> [530,]  78   2      0        180        0   148
#> [531,]  80   5      0          5        1   130
#> [532,]  82   1      1          0        1    82
#> [533,]  77   4      0        180        1    98
#> [534,]  81   1      0        108        0   129
#> [535,]  78  12      0        180        0   134
#> [536,]  82  21      1          2        0   155
#> [537,]  84  22      1         10        0   180
#> [538,]  80   6      0          6        1   110
#> [539,]  83   9      1          5        1   170
#> [540,]  82   5      0        180        0   110
#> [541,]  83   4      0        103        0    97
#> [542,]  81  11      1          8        0   160
#> [543,]  80  11      1          8        0   170
#> [544,]  78  23      1         10        1   145
#> [545,]  79   4      0          4        1   183
#> [546,]  82   8      1          1        0   128
#> [547,]  81  15      0        180        1   140
#> [548,]  83   8      0          8        0   115
#> [549,]  81  16      0         16        1   110
#> [550,]  80   6      1          0        1   150
#> [551,]  80  11      1          8        0   110
#> [552,]  81   8      0        180        0   146
#> [553,]  80   8      1          7        0   160
#> [554,]  79   0      1          0        1    96
#> [555,]  85   4      0        180        0    90
#> [556,]  81   2      1          1        0   198
#> [557,]  83   2      0          2        1   155
#> [558,]  82   6      0        128        1   100
#> [559,]  80   3      1          1        1   230
#> [560,]  82  23      1          0        0   110
#> [561,]  84   4      0          4        1    85
#> [562,]  81   1      0          1        1   150
#> [563,]  83   3      0        180        0   174
#> [564,]  81   4      0         90        1   138
#> [565,]  79   9      1          8        0   150
#> [566,]  85   3      1          2        1   160
#> [567,]  84   4      0         89        1   129
#> [568,]  79   4      0          4        1    60
#> [569,]  80   6      0         71        1   189
#> [570,]  83   1      0          1        1   100
#> [571,]  80  30      1         13        0   220
#> [572,]  83   9      0        180        0   198
#> [573,]  79  14      1          0        0   110
#> [574,]  82   0      0          2        1   100
#> [575,]  83   1      0        180        0   160
#> [576,]  81   4      0          4        0   175
#> [577,]  84  15      1         13        1   110
#> [578,]  81   1      0          1        1   145
#> [579,]  81  12      0         12        1   163
#> [580,]  82  16      1          8        0   103
#> [581,]  81   4      0          4        0   160
#> [582,]  81  19      1         14        0   120
#> [583,]  82   3      1          2        0   130
#> [584,]  83   7      0        126        0   135
#> [585,]  81  16      1          9        0   180
#> [586,]  84   6      0        165        0   145
#> [587,]  86   3      0          3        1   140
#> [588,]  84   3      0        180        1   120
#> [589,]  85   3      0          3        1   118
#> [590,]  81   2      1          0        1   118
#> [591,]  81   4      0        180        0   160
#> [592,]  83   9      0        180        1   149
#> [593,]  82   1      0        180        1   193
#> [594,]  83   4      0          4        0   130
#> [595,]  87   2      0          5        1   137
#> [596,]  86  12      1          0        1   132
#> [597,]  86   6      1          0        1   140
#> [598,]  84  16      0         70        1   150
#> [599,]  83  19      0         43        0   150
#> [600,]  86   2      0        180        1   169
#> [601,]  88  14      1          3        1   130
#> [602,]  84   3      0          3        1   121
#> [603,]  83  13      1         12        0   170
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
#> [616,]  88   4      0          4        1   115
#> [617,]  85  22      0         22        1   184
#> [618,]  83   9      0         65        1   150
#> [619,]  86   6      0         46        0   173
#> [620,]  88   3      0        115        0   110
#> [621,]  83   3      0          3        1   130
#> [622,]  87   8      0          8        1   157
#> [623,]  88   4      0          4        0    86
#> [624,]  89   4      0          4        1   153
#> [625,]  87   6      0        180        1   110
#> [626,]  87   1      0          1        0   170
#> [627,]  84   8      0        180        1   119
#> [628,]  85   8      0          8        1   136
#> [629,]  84   2      0        110        1   174
#> [630,]  87  29      0         29        1    97
#> [631,]  89  10      0         46        1   170
#> [632,]  90  14      0         14        1   100
#> [633,]  88   1      0          1        0   135
#> [634,]  86   4      0        180        1   145
#> [635,]  91   8      0          8        0   100
#> [636,]  87   6      1          0        0   125
#> [637,]  91  10      0        145        0   135
#> [638,]  86   3      1          0        1    80
#> [639,]  88   7      0         24        0   119
#> [640,]  88   8      0         50        1   154
#> [641,]  90  11      1         10        1   186
#> [642,]  87   6      0        126        1   168
#> [643,]  86   9      1          7        0   130
#> [644,]  87   5      0         36        1   150
#> [645,]  90   5      1          0        1   125
#> [646,]  88   3      1          2        0   159
#> [647,]  92   1      0          1        1   167
#> [648,]  91   3      0         33        1   137
#> [649,]  88   5      0        158        0   100
#> [650,]  87   7      0         74        1   105
#> [651,]  89  12      1          0        1   130
#> [652,]  89   2      0        168        0   118
#> [653,]  89  52      0         52        1   130
#> [654,]  89   4      0          4        1   159
#> [655,]  89  14      0        180        1    84
#> [656,]  91   4      1          0        1   120
#> [657,]  90  19      1         11        1   129
#> [658,]  90   1      0          1        1   118
#> [659,]  93   8      0        179        1   110
#> [660,]  94   8      0          8        1   142
#> [661,]  92   4      0         76        1   149
#> [662,]  90  16      0         16        1   106
#> [663,]  96   3      0         12        1    97
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  91   7      0          7        0   135
#> [668,]  92   5      0         69        0   139
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+ 180.0+ 180.0+ 180.0+  12.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [11]   2.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+
#>  [41]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 177.0+ 180.0+
#>  [51] 180.0+ 180.0+ 172.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+   2.0  179.0+
#>  [61] 180.0+ 179.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0  180.0+   4.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0 
#>  [91] 180.0+  16.0+   6.0+ 180.0+ 180.0+  13.0+ 180.0+ 180.0+ 174.0+   1.0 
#> [101] 180.0+   9.0+ 180.0+ 180.0+ 180.0+   2.0    7.0+ 180.0+ 180.0+ 180.0+
#> [111] 180.0+  16.0+ 180.0+  15.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+
#> [121]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+
#> [131] 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+   4.0+ 147.0+ 180.0+ 180.0+
#> [141]   5.0+ 180.0+   4.0+ 180.0+   9.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#> [151]   2.0  180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+   9.0+ 180.0+
#> [161]   0.5  161.0+ 171.0+ 180.0+ 180.0+   3.0    1.0  180.0+  10.0+ 180.0+
#> [171] 180.0+  17.0   45.0    3.0+  19.0  180.0+   9.0+ 172.0+  24.0    8.0 
#> [181] 180.0+   1.0+  15.0  180.0+ 180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+
#> [191] 180.0+ 180.0+ 170.0   94.0  180.0+   7.0    7.0+   6.0  180.0+ 180.0+
#> [201] 180.0+ 180.0+  28.0   13.0+   5.0   18.0    5.0+ 180.0+   1.0  180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0 
#> [221]   7.0+  22.0  180.0+ 180.0+  84.0  180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [231]   3.0+ 167.0  180.0+ 180.0+  17.0  180.0+  12.0  180.0+  14.0+ 180.0+
#> [241]  88.0  180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+  12.0+ 180.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+   9.0    3.0  180.0+   2.0+  18.0+ 180.0+
#> [261] 180.0+ 180.0+ 180.0+   2.0+  15.0  180.0+ 180.0+  13.0  180.0+ 179.0+
#> [271] 166.0+  14.0+   3.0    0.5+   3.0+ 180.0+ 175.0+   7.0+   8.0    5.0 
#> [281]  16.0  180.0+   1.0  180.0+ 180.0+   1.0+  79.0   15.0+ 180.0+ 180.0+
#> [291] 180.0+ 180.0+   3.0  175.0  180.0+  10.0  180.0+ 180.0+ 180.0+   6.0 
#> [301] 180.0+  19.0+  12.0   99.0  180.0+ 179.0+ 180.0+ 180.0+   0.5   18.0 
#> [311]   7.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0  101.0    5.0  150.0  180.0+
#> [321] 180.0+ 180.0+ 180.0+ 171.0  174.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+
#> [331]  14.0+ 180.0+   5.0+ 103.0  180.0+  36.0  180.0+  97.0  180.0+   7.0 
#> [341]   8.0+ 180.0+   2.0+  18.0  172.0+   7.0  180.0+   8.0+  13.0+ 123.0 
#> [351] 180.0+  19.0  180.0+  60.0   76.0  180.0+  10.0+ 180.0+ 162.0  124.0 
#> [361]   9.0  180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+
#> [371]  16.0+ 180.0+  16.0+ 180.0+ 180.0+   6.0  180.0+   7.0+  15.0    3.0+
#> [381]  13.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+  20.0  180.0+  20.0 
#> [391] 180.0+ 180.0+   8.0   87.0   12.0  180.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [401] 180.0+ 180.0+  10.0+ 180.0+ 180.0+ 179.0+   1.0  180.0+ 159.0   15.0 
#> [411] 180.0+  10.0    1.0  180.0+  13.0  180.0+ 104.0+   1.0   57.0  180.0+
#> [421]  11.0    3.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+ 177.0+
#> [431] 180.0+ 180.0+  11.0+   4.0+ 180.0+   7.0  180.0+ 180.0+   3.0  180.0+
#> [441] 180.0+ 180.0+  85.0  180.0+ 180.0+ 174.0+   4.0  180.0+  12.0   46.0 
#> [451]   4.0    1.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0 
#> [461] 180.0+ 180.0+   1.0   12.0  180.0+   3.0  168.0+ 180.0+ 176.0+  18.0 
#> [471] 180.0+  47.0  180.0+  11.0  180.0+   8.0+   7.0   32.0  180.0+  10.0 
#> [481] 172.0  119.0  180.0+   8.0  180.0+   1.0   80.0  180.0+ 180.0+   4.0+
#> [491]   2.0  180.0+  11.0   24.0   32.0    3.0+ 180.0+   1.0    4.0    4.0 
#> [501]   6.0    2.0+ 180.0+ 171.0    1.0   43.0    3.0  180.0+   6.0  180.0+
#> [511]   8.0   59.0   17.0   10.0+ 180.0+ 118.0  173.0   37.0  180.0+ 175.0+
#> [521]  15.0+   3.0  166.0+  71.0   20.0+   3.0+  10.0   10.0    6.0+ 180.0+
#> [531]   5.0    1.0  180.0+ 108.0  180.0+ 180.0+ 180.0+   6.0    9.0+ 180.0+
#> [541] 103.0  180.0+ 169.0   70.0    4.0  180.0+ 180.0+   8.0+  16.0  180.0+
#> [551] 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+   2.0  128.0    3.0+  62.0 
#> [561]   4.0    1.0  180.0+  90.0  180.0+ 180.0+  89.0    4.0   71.0    1.0 
#> [571]  30.0  180.0+ 180.0+   2.0  180.0+   4.0+ 180.0+   1.0   12.0   16.0+
#> [581]   4.0+ 180.0+   3.0  126.0  180.0+ 165.0    3.0  180.0+   3.0+ 180.0+
#> [591] 180.0+ 180.0+ 180.0+   4.0+   5.0  180.0+   6.0   70.0   43.0  180.0+
#> [601]  14.0    3.0   13.0  180.0+  92.0  180.0+  38.0    4.0  177.0    3.0+
#> [611]   6.0+  62.0    6.0+   4.0+  20.0    4.0   22.0   65.0   46.0  115.0 
#> [621]   3.0+   8.0+   4.0    4.0  180.0+   1.0+ 180.0+   8.0  110.0   29.0 
#> [631]  46.0   14.0    1.0+ 180.0+   8.0   25.0  145.0    3.0   24.0   50.0 
#> [641]  11.0  126.0  180.0+  36.0   89.0   75.0    1.0   33.0  158.0   74.0 
#> [651] 180.0+ 168.0   52.0    4.0  180.0+   4.0  180.0+   1.0+ 179.0+   8.0+
#> [661]  76.0   16.0   12.0    8.0   26.0   53.0    7.0+  69.0  180.0+  15.0+
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
#>   0.8432029 
```
