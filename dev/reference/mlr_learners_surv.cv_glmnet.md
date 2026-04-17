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
#> min 0.00339    44   2.822 0.1298       6
#> 1se 0.06649    12   2.939 0.1357       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  35   5      1          2        0   172
#>   [3,]  35  10      1          9        0   106
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  38  12      1          8        1   120
#>   [7,]  36   5      1          0        1   115
#>   [8,]  33   6      1          1        1   115
#>   [9,]  38  16      1         10        0   160
#>  [10,]  38  12      1         11        1    92
#>  [11,]  37   1      1          0        1   146
#>  [12,]  40   2      1          1        1   148
#>  [13,]  42   2      0          2        0   140
#>  [14,]  40   6      0        180        1   138
#>  [15,]  40  11      1         10        1   120
#>  [16,]  42   2      0        180        0   100
#>  [17,]  41   2      1          1        0   166
#>  [18,]  40   1      1          0        1   145
#>  [19,]  43   4      1          0        1   130
#>  [20,]  42   4      0        180        0   162
#>  [21,]  40   3      1          1        0   170
#>  [22,]  42  12      1         10        1   170
#>  [23,]  43   2      1          1        1   116
#>  [24,]  42   2      0        180        1   124
#>  [25,]  44   5      1          1        0   170
#>  [26,]  45   3      0        180        1   154
#>  [27,]  44   3      0        180        0   141
#>  [28,]  41   5      1          4        1   141
#>  [29,]  46  15      0        180        0   120
#>  [30,]  46   2      1          1        0   126
#>  [31,]  44   3      1          0        1   180
#>  [32,]  46   7      1          2        0   166
#>  [33,]  43  29      0        180        1   180
#>  [34,]  45   4      1          0        0   124
#>  [35,]  43  10      0        180        0   185
#>  [36,]  47   6      1          0        1   116
#>  [37,]  46  13      1         10        0   100
#>  [38,]  44   0      1          0        1    96
#>  [39,]  47   4      1          3        1   160
#>  [40,]  43   3      1          0        1   124
#>  [41,]  45   8      1          0        1   117
#>  [42,]  49   5      0         73        1   136
#>  [43,]  45   5      0          5        0   141
#>  [44,]  46   2      1          1        1   122
#>  [45,]  44   4      1          0        1   114
#>  [46,]  47   2      0        180        0   108
#>  [47,]  44   9      1          8        1   135
#>  [48,]  45   5      0        180        1   190
#>  [49,]  46   5      1          3        0   130
#>  [50,]  44   2      0        180        0   142
#>  [51,]  48  12      1         11        0   200
#>  [52,]  47   5      1          3        1   130
#>  [53,]  49   4      0        180        0   117
#>  [54,]  47  10      0         10        1   140
#>  [55,]  50   1      1          0        1   129
#>  [56,]  48   2      1          0        0   184
#>  [57,]  50   6      1          2        1   140
#>  [58,]  49   7      1          7        1   110
#>  [59,]  46   3      1          1        1   140
#>  [60,]  46   9      1          9        1   122
#>  [61,]  50   7      0        180        1   110
#>  [62,]  49   2      0          2        0   105
#>  [63,]  49  15      1         11        1   160
#>  [64,]  47   2      0        180        0   150
#>  [65,]  49  23      0        179        1   112
#>  [66,]  50   4      0          4        1   100
#>  [67,]  51   3      1          2        0   113
#>  [68,]  50   1      1          0        0   150
#>  [69,]  50   9      0        180        0   130
#>  [70,]  49   7      1          4        1    90
#>  [71,]  47   8      0        180        0   160
#>  [72,]  47   6      0        180        1   162
#>  [73,]  51   8      0        180        1   140
#>  [74,]  46   1      1          1        0   145
#>  [75,]  50   4      1          1        0   150
#>  [76,]  48   7      1          0        1   110
#>  [77,]  48  17      1         10        0   111
#>  [78,]  47   2      1          1        0   110
#>  [79,]  52   4      1          4        0   152
#>  [80,]  49   9      1          3        0   102
#>  [81,]  49  15      0        180        1   160
#>  [82,]  53   7      1          0        0   199
#>  [83,]  54   6      1          3        0   129
#>  [84,]  51   3      1          1        0   140
#>  [85,]  50   2      0          5        1   106
#>  [86,]  50  10      1          6        0   122
#>  [87,]  50  14      1         13        0   170
#>  [88,]  48   3      1          2        0   150
#>  [89,]  51  25      1          1        0   202
#>  [90,]  49   5      1          2        1   150
#>  [91,]  52  14      1          7        1   200
#>  [92,]  48   6      0        180        0   160
#>  [93,]  53   4      1          0        1   156
#>  [94,]  51  13      0         99        1   160
#>  [95,]  54   9      1          0        1   138
#>  [96,]  55   3      1          1        0   150
#>  [97,]  55   6      1          2        1   114
#>  [98,]  52   4      0        180        1   180
#>  [99,]  51  13      1         11        0   145
#> [100,]  54   4      1          0        1   121
#> [101,]  52   4      0        180        0   183
#> [102,]  50   3      0        174        1   153
#> [103,]  55  28      1         13        1   160
#> [104,]  49   1      0          1        1   110
#> [105,]  50   7      1          1        0   156
#> [106,]  53   9      0          9        1    95
#> [107,]  50   7      1          0        1   127
#> [108,]  56   4      1          1        1   130
#> [109,]  55   1      0        180        0   127
#> [110,]  55   2      0          2        0   145
#> [111,]  54   7      1          0        1   100
#> [112,]  56   3      0        180        1   193
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
#> [123,]  54   3      0        180        0   128
#> [124,]  56   3      0          8        1   139
#> [125,]  55   1      0          2        0   130
#> [126,]  57   3      0          3        0   120
#> [127,]  54   7      1          2        0   129
#> [128,]  54   2      1          1        0   135
#> [129,]  52   9      1          3        0   170
#> [130,]  54   2      1          1        1   176
#> [131,]  57   5      1          3        1   138
#> [132,]  57   1      0          1        1   100
#> [133,]  52   2      0        180        0   140
#> [134,]  53   3      1          0        1   200
#> [135,]  57  10      0        180        1   170
#> [136,]  57   0      0          0        1   150
#> [137,]  59   3      1          1        0   172
#> [138,]  57   4      0        180        1   119
#> [139,]  58   6      1          0        1    90
#> [140,]  54  17      1          8        1   227
#> [141,]  55   9      1          2        1   147
#> [142,]  55  13      0        166        1   140
#> [143,]  56   5      0          5        1   150
#> [144,]  54  23      1          8        0   120
#> [145,]  57   4      1          2        1   185
#> [146,]  53   4      0        147        1   145
#> [147,]  53   7      1          0        1   120
#> [148,]  57  11      1         10        1   129
#> [149,]  55   5      0          5        1   131
#> [150,]  54   7      1          0        1   141
#> [151,]  56   4      0          4        0   164
#> [152,]  55   5      1          0        0   140
#> [153,]  56   7      1          5        1   120
#> [154,]  55   2      0          2        0   106
#> [155,]  59   9      1          1        1   125
#> [156,]  57   2      0          2        1   120
#> [157,]  60   5      1          1        0   138
#> [158,]  58  11      1          9        1   124
#> [159,]  57  10      1          9        0   103
#> [160,]  59   6      1          0        1   140
#> [161,]  59   4      1          0        1   152
#> [162,]  61   9      0          9        1   160
#> [163,]  60   0      1          0        1    80
#> [164,]  59   2      1          1        0   140
#> [165,]  61   4      1          3        0   151
#> [166,]  61   9      1          8        0   150
#> [167,]  58   1      0          1        1   100
#> [168,]  61  20      1         13        0   130
#> [169,]  57  13      1         10        0   110
#> [170,]  57   2      1          0        1   116
#> [171,]  57  11      0        180        1   150
#> [172,]  61   3      0         17        0   143
#> [173,]  56  14      0         45        0   130
#> [174,]  57   3      1          2        0   120
#> [175,]  58  19      1         13        1   140
#> [176,]  59   9      1          0        1    80
#> [177,]  55   9      1          7        1   135
#> [178,]  61   4      1          0        1   115
#> [179,]  56   8      1          8        0   120
#> [180,]  59  11      1          8        1   190
#> [181,]  57   1      0          1        0   126
#> [182,]  58   5      1          1        1   135
#> [183,]  59  10      0        180        0   160
#> [184,]  61   8      0         77        0   120
#> [185,]  61  13      0         13        0   210
#> [186,]  58   8      1          5        0   152
#> [187,]  62   7      1          2        1   180
#> [188,]  57   3      1          0        0   100
#> [189,]  61  18      0        170        0   140
#> [190,]  61  28      1          7        0   133
#> [191,]  58   8      1          3        1   150
#> [192,]  57   7      0        169        0   180
#> [193,]  61   7      0          7        1   150
#> [194,]  60  17      1          8        1   140
#> [195,]  59   1      0        180        0   155
#> [196,]  59  16      1          9        1   133
#> [197,]  61  13      0         13        0   120
#> [198,]  57  18      1          9        1    93
#> [199,]  61   5      0          5        1   160
#> [200,]  57   2      1          1        0   159
#> [201,]  62  17      1         10        1   180
#> [202,]  62   1      1          0        1   172
#> [203,]  63   3      1          1        0   180
#> [204,]  61   7      0        180        0   135
#> [205,]  63   4      1          3        0   222
#> [206,]  62   3      0        180        1   105
#> [207,]  63   4      0        180        1   190
#> [208,]  64   4      0        180        0   130
#> [209,]  63   4      1          1        0   155
#> [210,]  60  18      1         13        0   132
#> [211,]  59   8      0        180        1   140
#> [212,]  61   9      1          9        1   150
#> [213,]  58   9      1          9        0   110
#> [214,]  59   1      0         22        1   162
#> [215,]  59   4      0        180        0   196
#> [216,]  60   7      0          7        0   140
#> [217,]  63   1      0          1        0   162
#> [218,]  63   1      0          1        0   130
#> [219,]  62   6      0        180        0   170
#> [220,]  61  15      1         13        0   170
#> [221,]  59   4      0          4        0   149
#> [222,]  64  10      1          9        0   160
#> [223,]  62   6      0          6        0   120
#> [224,]  63  12      1         10        0   200
#> [225,]  60   8      0         17        1   130
#> [226,]  64  12      1         11        0   160
#> [227,]  66   1      1          0        1   120
#> [228,]  64   6      1          0        1   140
#> [229,]  63  10      1          0        1   148
#> [230,]  63  14      1          9        0   123
#> [231,]  65  36      1         11        0   140
#> [232,]  63   4      1          3        0   162
#> [233,]  66   3      1          1        0   127
#> [234,]  61  10      1          2        1   194
#> [235,]  64  32      1          9        1   160
#> [236,]  63  12      1          9        0   114
#> [237,]  66   5      1          0        1   110
#> [238,]  65   8      1          0        0   168
#> [239,]  64  21      1         10        0   190
#> [240,]  64   9      0        180        0   150
#> [241,]  61   4      0        180        1   113
#> [242,]  65   3      0        180        1   190
#> [243,]  63  12      0         12        1   150
#> [244,]  62   3      1          1        1   199
#> [245,]  65   6      0          9        0   112
#> [246,]  63   5      1          4        0   170
#> [247,]  62  13      1         11        0   180
#> [248,]  67  11      0         11        1   100
#> [249,]  64   2      0          2        0   201
#> [250,]  66  18      1          5        0   142
#> [251,]  66  16      1         11        1   169
#> [252,]  62   9      0        180        0   145
#> [253,]  61  14      1          5        0   140
#> [254,]  61  15      1         10        0   130
#> [255,]  63   9      1          8        1   160
#> [256,]  63   2      1          0        0   140
#> [257,]  64  19      1          8        1   160
#> [258,]  67   6      0        180        1   170
#> [259,]  65  15      1         11        1   160
#> [260,]  68   5      1          4        1   150
#> [261,]  64  13      1         12        1   150
#> [262,]  66   7      1          0        1   115
#> [263,]  64  14      1         13        1   150
#> [264,]  65   3      0          3        0   105
#> [265,]  64   0      0          0        1   148
#> [266,]  66   3      1          0        1   135
#> [267,]  66   6      1          0        1   140
#> [268,]  65   2      1          1        1   170
#> [269,]  64  10      1          9        1   110
#> [270,]  68   5      0          5        1    90
#> [271,]  64   1      0          1        1   120
#> [272,]  68  18      0        180        1   260
#> [273,]  63   8      1          1        1   162
#> [274,]  63   1      1          0        1   155
#> [275,]  63  10      0         18        1   130
#> [276,]  67  11      0         11        0   150
#> [277,]  68  11      0        180        0   160
#> [278,]  68  14      0         79        0   172
#> [279,]  66  12      1         10        1   150
#> [280,]  65  15      1         12        1   150
#> [281,]  66  11      1          0        0   100
#> [282,]  63   2      0        180        0   150
#> [283,]  65  11      1          6        0   130
#> [284,]  69  21      1         10        0   180
#> [285,]  66   9      1          8        0   130
#> [286,]  63   8      0        180        1   120
#> [287,]  68  14      1         13        1   140
#> [288,]  65   8      1          0        1    90
#> [289,]  66   3      0          3        1   138
#> [290,]  69   1      1          0        0   170
#> [291,]  67   1      0        180        1   160
#> [292,]  65   1      1          0        0   133
#> [293,]  63   2      1          0        0    99
#> [294,]  67   2      0        180        0   184
#> [295,]  65   6      0          6        0    80
#> [296,]  66  19      1         12        1   150
#> [297,]  67  12      1         12        0   160
#> [298,]  69   6      0         99        1   140
#> [299,]  65   4      1          1        0   130
#> [300,]  64   4      0        179        0   160
#> [301,]  70  15      1         12        1   132
#> [302,]  64   4      0        180        1   140
#> [303,]  64   0      1          0        1   118
#> [304,]  67   2      0         18        0   131
#> [305,]  66   7      1          5        1   131
#> [306,]  69   4      1          3        1   150
#> [307,]  65  13      1         12        1   130
#> [308,]  69   8      0         93        0   140
#> [309,]  64  21      0         21        1   155
#> [310,]  66   6      0        180        0   140
#> [311,]  65   1      0          1        1   120
#> [312,]  68  18      1          0        1   160
#> [313,]  65   6      0        101        1   115
#> [314,]  68   4      0          4        1   190
#> [315,]  71   3      0          5        0   112
#> [316,]  70   7      1          0        1   190
#> [317,]  68   7      0        150        0   210
#> [318,]  71  20      1          0        1   160
#> [319,]  67   2      0        180        0   128
#> [320,]  66   9      1          3        1   151
#> [321,]  66   1      1          1        1   165
#> [322,]  69   8      0        180        1   153
#> [323,]  66   4      0        180        0   130
#> [324,]  67  10      1          9        0   200
#> [325,]  67   6      1          4        0   130
#> [326,]  68  18      1         14        1   170
#> [327,]  69   0      0          0        1   148
#> [328,]  68   7      1          0        1   150
#> [329,]  69   3      1          2        0   151
#> [330,]  65  14      1         13        1   150
#> [331,]  69   8      0        180        1   180
#> [332,]  71   6      0         45        1   158
#> [333,]  71   3      0        103        0   133
#> [334,]  67   1      0         36        1   104
#> [335,]  68   6      0        180        0   145
#> [336,]  69   6      1          4        1   174
#> [337,]  72   3      1          0        1   132
#> [338,]  69   8      1          7        1   108
#> [339,]  66   2      1          1        0   123
#> [340,]  69  19      0        180        0   130
#> [341,]  67  14      0        172        1   140
#> [342,]  69  11      1          0        1   120
#> [343,]  67   7      1          4        0   122
#> [344,]  69   4      1          3        0   132
#> [345,]  68   2      0          7        1   130
#> [346,]  69   8      1          2        0   121
#> [347,]  67  13      1          9        0   130
#> [348,]  70   3      0        123        0   130
#> [349,]  70   9      0        180        1   142
#> [350,]  72   5      1          4        0   170
#> [351,]  67  22      1          1        1   140
#> [352,]  68   3      0         19        0   135
#> [353,]  67  12      1          8        0   120
#> [354,]  67   1      0          1        1    60
#> [355,]  67   4      0         60        1   136
#> [356,]  69   5      0         76        0   120
#> [357,]  68  10      1          8        1   160
#> [358,]  66  24      1         13        0   130
#> [359,]  68   7      1          2        0   135
#> [360,]  73  20      1          0        1   170
#> [361,]  71   6      0          9        0   120
#> [362,]  69  10      1          6        1   120
#> [363,]  70  11      0        180        1   210
#> [364,]  72  19      1          8        0   120
#> [365,]  72  12      1         10        0   170
#> [366,]  67   9      0        180        0   158
#> [367,]  73  13      0        152        1   130
#> [368,]  67   4      1          1        0   134
#> [369,]  72   6      1          5        0   115
#> [370,]  71   1      0        173        1   188
#> [371,]  70   3      0        180        0   121
#> [372,]  69   3      0        180        0   220
#> [373,]  71   3      1          2        0   150
#> [374,]  68   4      1          3        0   210
#> [375,]  72   5      0         28        0   120
#> [376,]  71   5      0        180        0   191
#> [377,]  68   7      0        180        1   130
#> [378,]  72  16      1          1        1   130
#> [379,]  70   4      0        180        0   180
#> [380,]  73   6      1          0        1   270
#> [381,]  72   8      1          1        1   150
#> [382,]  73   7      0          7        1   140
#> [383,]  68  15      1         13        1   130
#> [384,]  70  13      1          9        0   100
#> [385,]  73   0      0        180        1   161
#> [386,]  74   8      1          0        1    85
#> [387,]  73   4      0        180        1   154
#> [388,]  71   3      1          1        0   150
#> [389,]  71  15      1         11        0   165
#> [390,]  74  20      0         20        1   180
#> [391,]  68   9      0        180        1   120
#> [392,]  71  20      1         10        0   140
#> [393,]  70   5      1          0        1   190
#> [394,]  71   8      1          7        0   149
#> [395,]  70  26      1         11        1   120
#> [396,]  74   4      0          4        0   120
#> [397,]  72   5      1          3        1   160
#> [398,]  70   3      0        180        1   154
#> [399,]  72  15      1          0        1   150
#> [400,]  71   7      1          2        0   143
#> [401,]  72   8      1          0        1   140
#> [402,]  74   3      0          3        1   150
#> [403,]  73  17      1         11        0   140
#> [404,]  71  13      1          8        0   121
#> [405,]  71  14      1         13        1   170
#> [406,]  74   7      1          0        1   117
#> [407,]  69   7      0        180        1   144
#> [408,]  72  15      1         13        0   156
#> [409,]  70   8      0          8        0   120
#> [410,]  71  10      1          9        1   120
#> [411,]  75   1      0          1        0   133
#> [412,]  75   2      1          1        0   145
#> [413,]  73  10      1         10        1   120
#> [414,]  74  15      1          9        1   179
#> [415,]  71   2      0         10        1   112
#> [416,]  73   1      0          1        1    80
#> [417,]  71  11      1          8        0   110
#> [418,]  70   7      1          4        0   184
#> [419,]  72   1      1          1        0   168
#> [420,]  73  10      0        180        0   162
#> [421,]  72  11      0         11        1   140
#> [422,]  73   5      1          3        1   112
#> [423,]  76  25      1         12        1   170
#> [424,]  72   2      0        180        0   120
#> [425,]  75   1      0        180        1   140
#> [426,]  72   4      1          0        1   197
#> [427,]  71   3      1          0        0   144
#> [428,]  74  34      1          8        1   233
#> [429,]  71  32      1         12        1   107
#> [430,]  72   3      0        180        0   160
#> [431,]  76   5      0          5        1   130
#> [432,]  77  11      0         11        1   150
#> [433,]  75   3      1          1        0   180
#> [434,]  73  15      0         15        1   160
#> [435,]  73  10      1         10        0   124
#> [436,]  74   7      0        180        1   150
#> [437,]  74   2      1          1        0   140
#> [438,]  74  19      1          4        1   200
#> [439,]  73   6      0          6        1   114
#> [440,]  75  23      1         14        1   110
#> [441,]  72   4      0         85        1   120
#> [442,]  72   4      1          3        0   160
#> [443,]  73   4      1          3        1   125
#> [444,]  76  13      1         10        0   110
#> [445,]  75   4      1          0        1   122
#> [446,]  75   0      0          0        1   130
#> [447,]  73  13      1         11        0   195
#> [448,]  75  12      0         12        1   160
#> [449,]  74   8      1          0        1   105
#> [450,]  76  13      1          8        1   148
#> [451,]  75   4      1          2        1   188
#> [452,]  74   6      0        180        0   160
#> [453,]  76   4      0          4        1   155
#> [454,]  75   1      0          1        1   125
#> [455,]  73   0      0        180        0   156
#> [456,]  78  12      1         11        1   160
#> [457,]  76  44      1         10        0   105
#> [458,]  76   5      0        180        0   185
#> [459,]  74  10      1          0        1   135
#> [460,]  76   5      1          0        1   167
#> [461,]  74   8      1          8        1   170
#> [462,]  75   9      0        180        1   140
#> [463,]  73  33      1         12        1   175
#> [464,]  77   5      1          0        0   123
#> [465,]  77  12      1          9        1   100
#> [466,]  73  10      1          9        0   146
#> [467,]  77  12      0        180        0   130
#> [468,]  77   1      1          0        1    90
#> [469,]  76  12      1         11        1   120
#> [470,]  78   5      1          0        1   170
#> [471,]  73   7      1          0        0   174
#> [472,]  74   6      0         79        1   140
#> [473,]  74   2      1          0        1   130
#> [474,]  76  29      0         47        0    90
#> [475,]  73   8      1          1        1   162
#> [476,]  78   7      0          7        1   133
#> [477,]  78   8      1          6        1   110
#> [478,]  74   7      0          7        0   161
#> [479,]  76  13      1          1        1   170
#> [480,]  78  32      1          9        1   198
#> [481,]  79   6      0        180        0   170
#> [482,]  78  13      1          5        0   130
#> [483,]  75   5      0        119        1   150
#> [484,]  75  12      1          1        1   120
#> [485,]  75  13      1          6        0   150
#> [486,]  74  10      1          8        0   135
#> [487,]  76   1      0          1        1    83
#> [488,]  78  12      1          9        0   150
#> [489,]  78   2      1          1        0   130
#> [490,]  78  10      0        180        1   130
#> [491,]  76  11      1          0        0   120
#> [492,]  75  11      1          4        0   162
#> [493,]  75   3      0          3        0     0
#> [494,]  76   7      0         29        1   150
#> [495,]  79   8      0         32        1   120
#> [496,]  80   6      0          6        1   150
#> [497,]  78   6      1          0        1   240
#> [498,]  76   3      1          0        1   140
#> [499,]  78  11      1          1        1   140
#> [500,]  79  11      0        180        0   160
#> [501,]  79   2      1          0        1   121
#> [502,]  81   1      0          1        0   130
#> [503,]  79   4      0          4        1   125
#> [504,]  76  10      1          8        0   180
#> [505,]  76  12      1         10        1   127
#> [506,]  77   6      0          6        1   107
#> [507,]  80   3      1          0        1   120
#> [508,]  75   2      1          1        1   204
#> [509,]  78  11      0        180        1   135
#> [510,]  76   1      0          1        1   140
#> [511,]  79   3      0          3        0   120
#> [512,]  77   7      0        180        1   170
#> [513,]  77   9      1          4        0   141
#> [514,]  82   5      0          8        1   120
#> [515,]  80  40      1          0        1   138
#> [516,]  80  17      1         12        0   100
#> [517,]  76   7      0        161        0   151
#> [518,]  79  10      0         10        1   120
#> [519,]  80  15      1          0        1    90
#> [520,]  81   4      1          2        1   126
#> [521,]  80   9      0        118        1   186
#> [522,]  80   6      0        173        1   160
#> [523,]  78  32      0        180        1   130
#> [524,]  81   3      0        180        0   184
#> [525,]  81   2      0        175        0   172
#> [526,]  78   7      0          7        1   147
#> [527,]  78  15      0         15        0   165
#> [528,]  80   5      1          1        1   108
#> [529,]  78   4      0        180        0   175
#> [530,]  79   3      0          3        1   101
#> [531,]  78  26      1          5        0   194
#> [532,]  81   4      1          1        1   104
#> [533,]  78  20      1          0        1   109
#> [534,]  78   3      1          1        1   152
#> [535,]  82   3      1          1        1   144
#> [536,]  79   6      0          6        0   152
#> [537,]  80   6      1          0        1   119
#> [538,]  78   2      0        180        0   148
#> [539,]  80   5      0          5        1   130
#> [540,]  82   1      1          0        1    82
#> [541,]  79  10      0        180        1   150
#> [542,]  81   1      0        108        0   129
#> [543,]  82  21      1          2        0   155
#> [544,]  84  22      1         10        0   180
#> [545,]  83   9      1          5        1   170
#> [546,]  83   5      0        180        0   148
#> [547,]  79   7      1          6        0   130
#> [548,]  81  11      1          8        0   160
#> [549,]  81   5      0        177        0    41
#> [550,]  80  11      1          8        0   170
#> [551,]  79   4      0          4        1   183
#> [552,]  78   9      1          4        1   120
#> [553,]  79   1      0        180        1   170
#> [554,]  81  20      1          9        0   170
#> [555,]  83   8      0          8        0   115
#> [556,]  80  11      1          8        0   110
#> [557,]  80   8      1          7        0   160
#> [558,]  79   7      0        177        0   197
#> [559,]  79   0      1          0        1    96
#> [560,]  85   4      0        180        0    90
#> [561,]  81   2      1          1        0   198
#> [562,]  83   2      0          2        1   155
#> [563,]  82   6      0        128        1   100
#> [564,]  80   3      1          1        1   230
#> [565,]  84   5      0        180        1   203
#> [566,]  84   4      0          4        1    85
#> [567,]  81   1      0          1        1   150
#> [568,]  84   1      0         38        1   205
#> [569,]  83   3      0        180        0   174
#> [570,]  85   3      1          2        1   160
#> [571,]  80  13      1          8        1   140
#> [572,]  84   4      0         89        1   129
#> [573,]  79   4      0          4        1    60
#> [574,]  80   6      0         71        1   189
#> [575,]  83   1      0          1        1   100
#> [576,]  80  30      1         13        0   220
#> [577,]  83   3      0        114        0    98
#> [578,]  83   2      0        154        0   130
#> [579,]  82   0      0          2        1   100
#> [580,]  85   9      1          6        1   160
#> [581,]  83   1      0        180        0   160
#> [582,]  81   4      0          4        0   175
#> [583,]  84  15      1         13        1   110
#> [584,]  81  12      0         12        1   163
#> [585,]  82   5      1          0        1   146
#> [586,]  86  12      0        180        1   120
#> [587,]  83  12      1          2        1   170
#> [588,]  81  19      1         14        0   120
#> [589,]  82  15      1          0        0   183
#> [590,]  80   2      0         88        0   135
#> [591,]  83   7      0        126        0   135
#> [592,]  86   8      0          8        1   132
#> [593,]  81  16      1          9        0   180
#> [594,]  84   6      0        165        0   145
#> [595,]  86   3      0          3        1   140
#> [596,]  82   9      0        180        1   134
#> [597,]  84   3      0        180        1   120
#> [598,]  81  13      0        180        0   152
#> [599,]  85   3      0          3        1   118
#> [600,]  83   9      0        180        1   149
#> [601,]  82   1      0        180        1   193
#> [602,]  87   2      0          5        1   137
#> [603,]  82  14      1         11        1   103
#> [604,]  86   6      1          0        1   140
#> [605,]  84  16      0         70        1   150
#> [606,]  83  19      0         43        0   150
#> [607,]  83  10      1          0        1   190
#> [608,]  88  14      1          3        1   130
#> [609,]  84   3      0          3        1   121
#> [610,]  83  13      1         12        0   170
#> [611,]  84   3      0        180        1   170
#> [612,]  82   4      0          4        0   130
#> [613,]  86  13      0        177        0   163
#> [614,]  84  13      0         62        1   100
#> [615,]  86   6      1          1        0   112
#> [616,]  88   4      0          4        0   100
#> [617,]  83   9      0         65        1   150
#> [618,]  86   9      1          7        1   142
#> [619,]  87   2      0        180        1   130
#> [620,]  86   6      0         46        0   173
#> [621,]  88   2      0        180        1    68
#> [622,]  83   3      0          3        1   130
#> [623,]  87   6      0        180        1   110
#> [624,]  84   8      0        180        1   119
#> [625,]  85   8      0          8        1   136
#> [626,]  87  29      0         29        1    97
#> [627,]  87  15      1          9        1   138
#> [628,]  84   0      0        180        1   136
#> [629,]  89  10      0         46        1   170
#> [630,]  90  14      0         14        1   100
#> [631,]  88   1      0          1        0   135
#> [632,]  91   8      0          8        0   100
#> [633,]  87   6      1          0        0   125
#> [634,]  91  10      0        145        0   135
#> [635,]  86   3      1          0        1    80
#> [636,]  88   7      0         24        0   119
#> [637,]  90  11      1         10        1   186
#> [638,]  86  10      0        180        1   137
#> [639,]  86   9      1          7        0   130
#> [640,]  90   4      1          0        0   121
#> [641,]  91   1      0          1        1    74
#> [642,]  87  43      0        178        1   130
#> [643,]  87   5      0         36        1   150
#> [644,]  88   3      1          2        0   159
#> [645,]  89   3      1          1        1   160
#> [646,]  92   1      0          1        1   167
#> [647,]  91   3      0         33        1   137
#> [648,]  88   5      0        158        0   100
#> [649,]  87   7      0         74        1   105
#> [650,]  89  12      1          0        1   130
#> [651,]  89   2      0        168        0   118
#> [652,]  91   5      0        169        1   176
#> [653,]  89  52      0         52        1   130
#> [654,]  92   7      0          7        1   110
#> [655,]  91   0      0          0        0     0
#> [656,]  89  14      0        180        1    84
#> [657,]  91   4      1          0        1   120
#> [658,]  90  19      1         11        1   129
#> [659,]  94   6      0         50        0    78
#> [660,]  90   1      0          1        1   118
#> [661,]  91   2      0          2        1   116
#> [662,]  92   4      0         76        1   149
#> [663,]  91   1      0        180        0   158
#> [664,]  94   3      0         26        1   144
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  93   4      0        180        1   135
#> 
#> $y
#>   [1] 180.0+   5.0+ 180.0+   5.0+ 180.0+  12.0    5.0+ 180.0+ 180.0+ 180.0+
#>  [11] 180.0+   2.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+  73.0    5.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+
#>  [61] 180.0+   2.0  179.0+ 180.0+ 179.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   88.0+ 180.0+   4.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91]  85.0  180.0+ 166.0+  99.0  180.0+ 180.0+   6.0+ 180.0+  13.0+ 180.0+
#> [101] 180.0+ 174.0+  28.0    1.0  180.0+   9.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [111]   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+  16.0  180.0+ 180.0+
#> [121] 180.0+  12.0+ 180.0+   8.0    2.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [131] 140.0    1.0  180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 171.0+
#> [141]  15.0  166.0+   5.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+   5.0+ 180.0+
#> [151]   4.0+ 180.0+ 180.0+   2.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+  64.0 
#> [161] 180.0+   9.0+   0.5  180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+
#> [171] 180.0+  17.0   45.0    3.0+  19.0    9.0+  24.0  180.0+   8.0  180.0+
#> [181]   1.0+ 180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+ 180.0+ 170.0   94.0 
#> [191] 180.0+ 169.0    7.0  180.0+ 180.0+ 180.0+  13.0+  18.0    5.0+ 180.0+
#> [201] 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [211] 180.0+ 180.0+   9.0   22.0  180.0+   7.0+   1.0    1.0  180.0+ 180.0+
#> [221]   4.0+ 167.0    6.0+ 180.0+  17.0   12.0  180.0+ 180.0+ 180.0+  14.0+
#> [231]  36.0  180.0+   3.0+  88.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [241] 180.0+ 180.0+  12.0  180.0+   9.0  180.0+ 180.0+  11.0+   2.0+  18.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 103.0  180.0+ 180.0+   5.0+
#> [261]  13.0  179.0+  14.0+   3.0    0.5+   3.0+ 180.0+ 175.0+ 180.0+   5.0 
#> [271]   1.0  180.0+ 180.0+   1.0+  18.0   11.0+ 180.0+  79.0   80.0   15.0+
#> [281] 180.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+   8.0+   3.0  175.0 
#> [291] 180.0+ 180.0+ 180.0+ 180.0+   6.0   19.0+  12.0   99.0  180.0+ 179.0+
#> [301] 180.0+ 180.0+   0.5   18.0    7.0+ 152.0+ 180.0+  93.0   21.0+ 180.0+
#> [311]   1.0   18.0+ 101.0    4.0    5.0    7.0+ 150.0  180.0+ 180.0+ 180.0+
#> [321]   1.0  180.0+ 180.0+ 174.0+   6.0  180.0+   0.5  180.0+ 180.0+  14.0+
#> [331] 180.0+  45.0  103.0   36.0  180.0+  97.0  180.0+   8.0+   2.0+ 180.0+
#> [341] 172.0+ 180.0+   7.0  180.0+   7.0    8.0+  13.0+ 123.0  180.0+ 180.0+
#> [351]  51.0   19.0  180.0+   1.0   60.0   76.0   10.0+ 180.0+   7.0+ 124.0 
#> [361]   9.0  180.0+ 180.0+ 180.0+  12.0  180.0+ 152.0   76.0  180.0+ 173.0+
#> [371] 180.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+  16.0+ 180.0+   6.0 
#> [381] 180.0+   7.0+  15.0   13.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+  20.0 
#> [391] 180.0+  20.0  180.0+   8.0  180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [401] 180.0+   3.0  180.0+ 175.0   14.0+ 180.0+ 180.0+ 180.0+   8.0+ 179.0+
#> [411]   1.0  180.0+  15.0  180.0+  10.0    1.0  180.0+ 104.0+   1.0  180.0+
#> [421]  11.0    5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0  177.0+ 180.0+
#> [431]   5.0   11.0+ 180.0+  15.0+  10.0  180.0+ 180.0+ 180.0+   6.0  180.0+
#> [441]  85.0  180.0+ 180.0+ 174.0+   4.0    0.5  180.0+  12.0  180.0+ 180.0+
#> [451]  46.0  180.0+   4.0    1.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [461]   8.0  180.0+  33.0    5.0  180.0+ 180.0+ 180.0+   1.0   12.0  180.0+
#> [471]   7.0+  79.0  176.0+  47.0  180.0+   7.0    8.0+   7.0  180.0+  32.0 
#> [481] 180.0+ 172.0  119.0   12.0  180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+
#> [491]  11.0  152.0+   3.0   29.0   32.0    6.0  180.0+   3.0+ 180.0+ 180.0+
#> [501] 180.0+   1.0    4.0   10.0+ 180.0+   6.0    3.0+   2.0+ 180.0+   1.0 
#> [511]   3.0  180.0+  71.0    8.0   40.0   17.0  161.0   10.0+ 180.0+  93.0 
#> [521] 118.0  173.0  180.0+ 180.0+ 175.0+   7.0+  15.0+   5.0+ 180.0+   3.0 
#> [531] 171.0+  71.0   20.0+   3.0+ 180.0+   6.0+   6.0  180.0+   5.0    1.0 
#> [541] 180.0+ 108.0  180.0+ 180.0+   9.0+ 180.0+ 180.0+ 180.0+ 177.0+ 169.0 
#> [551]   4.0  180.0+ 180.0+  20.0    8.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+
#> [561] 180.0+   2.0  128.0    3.0+ 180.0+   4.0    1.0   38.0  180.0+ 180.0+
#> [571] 180.0+  89.0    4.0   71.0    1.0   30.0  114.0  154.0    2.0  180.0+
#> [581] 180.0+   4.0+ 180.0+  12.0    5.0+ 180.0+  77.0  180.0+  83.0   88.0 
#> [591] 126.0    8.0  180.0+ 165.0    3.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+
#> [601] 180.0+   5.0  174.0    6.0   70.0   43.0  180.0+  14.0    3.0   13.0 
#> [611] 180.0+   4.0  177.0   62.0    6.0+   4.0+  65.0   11.0  180.0+  46.0 
#> [621] 180.0+   3.0+ 180.0+ 180.0+   8.0   29.0  180.0+ 180.0+  46.0   14.0 
#> [631]   1.0+   8.0   25.0  145.0    3.0   24.0   11.0  180.0+ 180.0+   4.0 
#> [641]   1.0  178.0+  36.0   75.0    3.0+   1.0   33.0  158.0   74.0  180.0+
#> [651] 168.0  169.0   52.0    7.0    0.5  180.0+   4.0  180.0+  50.0    1.0+
#> [661]   2.0   76.0  180.0+  26.0   53.0    7.0+   0.5   69.0    2.0  180.0+
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
#>   0.8460082 
```
