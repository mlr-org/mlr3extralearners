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
#> min 0.00340    44    2.83 0.1421       6
#> 1se 0.06674    12    2.96 0.1336       5
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   5      1          2        0   172
#>   [5,]  35  10      1          9        0   106
#>   [6,]  34   5      0          5        0   120
#>   [7,]  35   2      1          1        1   112
#>   [8,]  37   9      0        180        1   151
#>   [9,]  38  13      1          0        1   161
#>  [10,]  38   2      0        115        0   150
#>  [11,]  36   1      0        180        1   155
#>  [12,]  36   5      1          0        1   115
#>  [13,]  33   6      1          1        1   115
#>  [14,]  38  16      1         10        0   160
#>  [15,]  38  12      1         11        1    92
#>  [16,]  40  12      1          9        0   153
#>  [17,]  42   3      1          1        1   130
#>  [18,]  37   1      1          0        1   146
#>  [19,]  40   2      1          1        1   148
#>  [20,]  38   5      1          3        0   125
#>  [21,]  40   6      0        180        1   138
#>  [22,]  41   2      1          1        0   166
#>  [23,]  40   1      1          0        1   145
#>  [24,]  43   4      1          0        1   130
#>  [25,]  42  12      1         10        1   170
#>  [26,]  42   2      0        180        1   124
#>  [27,]  44   5      1          1        0   170
#>  [28,]  41  10      1          8        0   150
#>  [29,]  44   3      0        180        0   141
#>  [30,]  41   5      1          4        1   141
#>  [31,]  43   2      0        180        1   140
#>  [32,]  45   2      0        180        1   140
#>  [33,]  46   2      1          1        0   126
#>  [34,]  47   4      1          3        0   118
#>  [35,]  48  15      0        180        1   160
#>  [36,]  45   3      0        150        0   130
#>  [37,]  44   3      1          0        1   180
#>  [38,]  46   7      1          2        0   166
#>  [39,]  43  29      0        180        1   180
#>  [40,]  43  10      0        180        0   185
#>  [41,]  46  13      1         10        0   100
#>  [42,]  44   0      1          0        1    96
#>  [43,]  43   3      1          0        1   124
#>  [44,]  45   5      0          5        0   141
#>  [45,]  46   2      1          1        1   122
#>  [46,]  46   6      1          0        1   100
#>  [47,]  47   2      0        180        0   108
#>  [48,]  45   5      0        180        1   190
#>  [49,]  46   5      1          3        0   130
#>  [50,]  44   2      0        180        0   142
#>  [51,]  46  15      0        180        1   120
#>  [52,]  47   3      1          1        1   120
#>  [53,]  48   3      0        180        0   154
#>  [54,]  47   5      1          3        1   130
#>  [55,]  47   9      1          6        0   170
#>  [56,]  46   3      1          0        1   119
#>  [57,]  49   4      0        180        0   117
#>  [58,]  47  10      0         10        1   140
#>  [59,]  48   2      1          0        0   184
#>  [60,]  47   7      0        180        0   145
#>  [61,]  50   4      1          1        0   125
#>  [62,]  50   6      1          2        1   140
#>  [63,]  49   7      1          7        1   110
#>  [64,]  46   3      1          1        1   140
#>  [65,]  50   7      0        180        1   110
#>  [66,]  49   2      0          2        0   105
#>  [67,]  49  15      1         11        1   160
#>  [68,]  47   2      0        180        0   150
#>  [69,]  46   6      1          0        1   156
#>  [70,]  50   7      1          0        1    92
#>  [71,]  47   6      0        180        1   162
#>  [72,]  51   8      0        180        1   140
#>  [73,]  52   2      0        180        0   155
#>  [74,]  46   1      1          1        0   145
#>  [75,]  50   4      1          1        0   150
#>  [76,]  48   7      1          0        1   110
#>  [77,]  53   8      0         36        1   160
#>  [78,]  48  17      1         10        0   111
#>  [79,]  47   2      1          1        0   110
#>  [80,]  52   4      1          4        0   152
#>  [81,]  49   9      1          3        0   102
#>  [82,]  49  15      0        180        1   160
#>  [83,]  53   5      0        180        1   140
#>  [84,]  54  17      1         12        1   102
#>  [85,]  50   2      0          5        1   106
#>  [86,]  50  14      1         13        0   170
#>  [87,]  53   8      1          7        0   160
#>  [88,]  48   3      1          2        0   150
#>  [89,]  53   4      0          4        0   140
#>  [90,]  52  14      1          7        1   200
#>  [91,]  48   6      0        180        0   160
#>  [92,]  53   4      1          0        1   156
#>  [93,]  51  13      0         99        1   160
#>  [94,]  54   9      1          0        1   138
#>  [95,]  49  16      0         16        0   125
#>  [96,]  55   3      1          1        0   150
#>  [97,]  54  23      1         10        0   131
#>  [98,]  52   7      1          2        0   154
#>  [99,]  55   6      1          2        1   114
#> [100,]  51  13      1         11        0   145
#> [101,]  52   4      0        180        0   183
#> [102,]  50   3      0        174        1   153
#> [103,]  55  28      1         13        1   160
#> [104,]  49   1      0          1        1   110
#> [105,]  50   7      1          1        0   156
#> [106,]  53   9      0          9        1    95
#> [107,]  53   8      1          0        1   130
#> [108,]  50   7      1          0        1   127
#> [109,]  55   1      0        180        0   127
#> [110,]  54   1      0        180        0   162
#> [111,]  54   7      1          0        1   100
#> [112,]  56   3      0        180        1   193
#> [113,]  56   2      0        180        0   132
#> [114,]  55   5      1          4        1   120
#> [115,]  54   3      0        180        1   180
#> [116,]  55   6      0        180        0   170
#> [117,]  53  10      1          9        0   172
#> [118,]  53  15      0         15        1    90
#> [119,]  53   4      0        180        1   150
#> [120,]  55   6      0        180        1   100
#> [121,]  55   6      1          5        1   138
#> [122,]  54  12      1          0        1   190
#> [123,]  57   3      0          3        0   120
#> [124,]  54   7      1          2        0   129
#> [125,]  54   2      1          1        0   135
#> [126,]  52   9      1          3        0   170
#> [127,]  57   5      1          3        1   138
#> [128,]  57   1      0        180        1   156
#> [129,]  57   1      0          1        1   100
#> [130,]  56   4      1          0        1   140
#> [131,]  55  11      1          7        0   104
#> [132,]  52  15      1         14        0   130
#> [133,]  53   3      1          0        1   200
#> [134,]  57  10      0        180        1   170
#> [135,]  58   8      0          8        1   130
#> [136,]  54   5      0        180        1   108
#> [137,]  57   0      0          0        1   150
#> [138,]  53  21      1         13        1   130
#> [139,]  57   4      0        180        1   119
#> [140,]  58   6      1          0        1    90
#> [141,]  53  15      1         10        1   130
#> [142,]  54  17      1          8        1   227
#> [143,]  55   9      1          2        1   147
#> [144,]  55  13      0        166        1   140
#> [145,]  55   3      1          2        0   140
#> [146,]  55   5      0          5        1   131
#> [147,]  54   7      1          0        1   141
#> [148,]  59  15      1         10        0   140
#> [149,]  58   9      1          0        1   180
#> [150,]  55   2      0          2        0   106
#> [151,]  57   1      0        180        0   148
#> [152,]  60  11      1          9        0   106
#> [153,]  57   2      0          2        1   120
#> [154,]  60   5      1          1        0   138
#> [155,]  57   5      0        180        1   130
#> [156,]  59   5      0        180        1   155
#> [157,]  58   4      1          3        0   120
#> [158,]  60   0      1          0        1    80
#> [159,]  58   8      0        161        1   140
#> [160,]  58  14      1          6        0   190
#> [161,]  61   4      1          3        0   151
#> [162,]  58   1      0          1        1   100
#> [163,]  61  20      1         13        0   130
#> [164,]  58  10      0         10        1   150
#> [165,]  57   4      1          3        0   138
#> [166,]  56  14      0         45        0   130
#> [167,]  57   3      1          2        0   120
#> [168,]  56  13      1          6        1   158
#> [169,]  56  18      1         11        1   165
#> [170,]  59   9      1          0        1    80
#> [171,]  60  12      1          0        1   114
#> [172,]  61   4      1          0        1   115
#> [173,]  56   8      1          8        0   120
#> [174,]  59  11      1          8        1   190
#> [175,]  57   1      0          1        0   126
#> [176,]  59   5      1          2        0   182
#> [177,]  59  10      0        180        0   160
#> [178,]  61  13      0         13        0   210
#> [179,]  62   7      1          2        1   180
#> [180,]  61  28      1          7        0   133
#> [181,]  60   7      0          7        0   147
#> [182,]  61   6      0          6        0   134
#> [183,]  57  12      1          9        1   120
#> [184,]  62   4      1          0        0   160
#> [185,]  58   2      0         30        0   202
#> [186,]  59  16      1          9        1   133
#> [187,]  61  13      0         13        0   120
#> [188,]  61   5      0          5        1   110
#> [189,]  58  11      1          9        0   179
#> [190,]  57   2      1          1        0   159
#> [191,]  62   1      1          0        1   172
#> [192,]  58   7      0        180        1   150
#> [193,]  63   3      1          1        0   180
#> [194,]  61   7      0        180        0   135
#> [195,]  63   4      1          3        0   222
#> [196,]  62   3      0        180        1   105
#> [197,]  63  15      1         10        1   126
#> [198,]  63   4      1          1        0   155
#> [199,]  60  18      1         13        0   132
#> [200,]  59   8      0        180        1   140
#> [201,]  61   9      1          9        1   150
#> [202,]  58   9      1          9        0   110
#> [203,]  59   4      0        180        0   196
#> [204,]  60   7      0          7        0   140
#> [205,]  59   5      1          1        0   148
#> [206,]  60   7      1          1        1    90
#> [207,]  63   1      0          1        0   130
#> [208,]  62   6      0        180        0   170
#> [209,]  59   4      0          4        0   149
#> [210,]  60   3      0          3        0   168
#> [211,]  64  10      1          9        0   160
#> [212,]  62   6      0          6        0   120
#> [213,]  63  12      1         10        0   200
#> [214,]  59  10      0        180        1   130
#> [215,]  60   8      0         17        1   130
#> [216,]  64  12      1         11        0   160
#> [217,]  66   1      1          0        1   120
#> [218,]  64   6      1          0        1   140
#> [219,]  63  14      1          9        0   123
#> [220,]  63   4      1          3        0   162
#> [221,]  66   3      1          1        0   127
#> [222,]  61  10      1          2        1   194
#> [223,]  64  32      1          9        1   160
#> [224,]  63  12      1          9        0   114
#> [225,]  63   7      0        180        0   120
#> [226,]  65   8      1          0        0   168
#> [227,]  65  10      1          8        1   120
#> [228,]  64   0      0          0        1    90
#> [229,]  64  21      1         10        0   190
#> [230,]  65   3      0        180        1   190
#> [231,]  66   6      1          1        1   130
#> [232,]  63  12      0         12        1   150
#> [233,]  62   3      1          1        1   199
#> [234,]  65   6      0          9        0   112
#> [235,]  65   3      1          0        1    80
#> [236,]  63   5      1          4        0   170
#> [237,]  63   2      1          1        0   180
#> [238,]  62  13      1         11        0   180
#> [239,]  67  11      0         11        1   100
#> [240,]  66  18      1          5        0   142
#> [241,]  66  16      1         11        1   169
#> [242,]  62   9      0        180        0   145
#> [243,]  61  14      1          5        0   140
#> [244,]  61  15      1         10        0   130
#> [245,]  63   9      1          8        1   160
#> [246,]  63   3      1          2        0   120
#> [247,]  63   2      1          0        0   140
#> [248,]  65   8      1          0        1   140
#> [249,]  64  13      1         12        1   150
#> [250,]  66  13      1          0        0   118
#> [251,]  64  14      1         13        1   150
#> [252,]  65   3      0          3        0   105
#> [253,]  64   0      0          0        1   148
#> [254,]  66   3      1          0        1   135
#> [255,]  65   2      1          1        1   170
#> [256,]  64  10      1          9        1   110
#> [257,]  67   8      1          1        1   130
#> [258,]  66  14      0        180        0   130
#> [259,]  68  18      0        180        1   260
#> [260,]  65  17      1         14        1   100
#> [261,]  63   8      1          1        1   162
#> [262,]  65  18      1          3        0   120
#> [263,]  63   1      1          0        1   155
#> [264,]  63  10      0         18        1   130
#> [265,]  68  14      0         79        0   172
#> [266,]  66  12      1         10        1   150
#> [267,]  65  15      1         12        1   150
#> [268,]  66  11      1          0        0   100
#> [269,]  65   4      1          2        1   145
#> [270,]  69  12      0         15        1   140
#> [271,]  66  15      1         13        1   160
#> [272,]  63   2      0        180        0   150
#> [273,]  65  11      1          6        0   130
#> [274,]  69  21      1         10        0   180
#> [275,]  69   6      0        180        1   100
#> [276,]  63   8      0        180        1   120
#> [277,]  68  14      1         13        1   140
#> [278,]  65   8      1          0        1    90
#> [279,]  66   3      0          3        1   138
#> [280,]  69   1      1          0        0   170
#> [281,]  67   1      0        180        1   160
#> [282,]  68  10      1         10        1   150
#> [283,]  65   1      1          0        0   133
#> [284,]  67   2      0        180        0   184
#> [285,]  65   6      0          6        0    80
#> [286,]  67  12      1         12        0   160
#> [287,]  69   6      0         99        1   140
#> [288,]  65   4      1          1        0   130
#> [289,]  64   4      0        179        0   160
#> [290,]  66   4      0        180        1   130
#> [291,]  70  15      1         12        1   132
#> [292,]  64  11      0         11        0   125
#> [293,]  64   0      1          0        1   118
#> [294,]  66   7      1          5        1   131
#> [295,]  68   4      1          0        1   160
#> [296,]  69   4      1          3        1   150
#> [297,]  69   8      0         93        0   140
#> [298,]  66   6      0        180        0   140
#> [299,]  65   1      0          1        1   120
#> [300,]  68  18      1          0        1   160
#> [301,]  65   6      0        101        1   115
#> [302,]  68   4      0          4        1   190
#> [303,]  71   3      0          5        0   112
#> [304,]  70   7      1          0        1   190
#> [305,]  68   7      0        150        0   210
#> [306,]  71  20      1          0        1   160
#> [307,]  66   1      1          1        1   165
#> [308,]  70   4      1          0        1   180
#> [309,]  69   8      0        180        1   153
#> [310,]  70  14      0        171        0   166
#> [311,]  66   4      0        180        0   130
#> [312,]  67  10      1          9        0   200
#> [313,]  67   6      1          4        0   130
#> [314,]  68  18      1         14        1   170
#> [315,]  69   0      0          0        1   148
#> [316,]  68   7      1          0        1   150
#> [317,]  69   3      1          2        0   151
#> [318,]  67  14      1         13        0   130
#> [319,]  65  14      1         13        1   150
#> [320,]  71   7      0          7        0   230
#> [321,]  66   2      0          2        1   228
#> [322,]  71   6      0         45        1   158
#> [323,]  69   5      0          5        1   142
#> [324,]  71   3      0        103        0   133
#> [325,]  69   3      0          3        1   130
#> [326,]  67   1      0         36        1   104
#> [327,]  67   5      0          5        0   130
#> [328,]  69   8      1          5        1   195
#> [329,]  69   6      1          4        1   174
#> [330,]  72   3      1          0        1   132
#> [331,]  69   8      1          7        1   108
#> [332,]  67   3      0        180        0   110
#> [333,]  66   2      1          1        0   123
#> [334,]  69  19      0        180        0   130
#> [335,]  68  18      0         18        1   100
#> [336,]  67  14      0        172        1   140
#> [337,]  69  11      1          0        1   120
#> [338,]  67   7      1          4        0   122
#> [339,]  69   4      1          3        0   132
#> [340,]  68   2      0          7        1   130
#> [341,]  70   3      0        123        0   130
#> [342,]  70   9      0        180        1   142
#> [343,]  68   3      0         19        0   135
#> [344,]  67  12      1          8        0   120
#> [345,]  69   1      0          1        1   110
#> [346,]  67   1      0          1        1    60
#> [347,]  67   4      0         60        1   136
#> [348,]  69   5      0         76        0   120
#> [349,]  67   8      1          0        1   130
#> [350,]  72  13      1         11        1   195
#> [351,]  66  24      1         13        0   130
#> [352,]  72  30      1          0        1   145
#> [353,]  68   7      1          2        0   135
#> [354,]  73  20      1          0        1   170
#> [355,]  70  11      0        180        1   210
#> [356,]  67   9      0        180        0   158
#> [357,]  73  13      0        152        1   130
#> [358,]  67   4      1          1        0   134
#> [359,]  70   3      0        180        0   121
#> [360,]  69   3      0        180        0   220
#> [361,]  72   5      0         28        0   120
#> [362,]  71   5      0        180        0   191
#> [363,]  73   6      0        180        1   117
#> [364,]  69  16      1         10        1   140
#> [365,]  69   8      1          1        0   164
#> [366,]  68   7      0        180        1   130
#> [367,]  69   1      1          0        0   155
#> [368,]  73   6      1          0        1   270
#> [369,]  72   8      1          1        1   150
#> [370,]  71   2      1          0        1   180
#> [371,]  73   7      0          7        1   140
#> [372,]  68  15      1         13        1   130
#> [373,]  70   3      0          3        1   159
#> [374,]  70  13      1          9        0   100
#> [375,]  73   0      0        180        1   161
#> [376,]  74   8      1          0        1    85
#> [377,]  73   4      0        180        1   154
#> [378,]  69   2      1          0        1   110
#> [379,]  71   3      1          1        0   150
#> [380,]  71  15      1         11        0   165
#> [381,]  68   9      0        180        1   120
#> [382,]  74   0      1          0        1    90
#> [383,]  73   3      1          0        1   136
#> [384,]  70   5      1          0        1   190
#> [385,]  71   8      1          7        0   149
#> [386,]  73  10      1          8        0   106
#> [387,]  69  12      1          1        1   149
#> [388,]  70  26      1         11        1   120
#> [389,]  74   4      0          4        0   120
#> [390,]  73   4      0         58        1   160
#> [391,]  73   6      0        180        0   110
#> [392,]  72  15      1          0        1   150
#> [393,]  74   3      0          3        1   150
#> [394,]  73  17      1         11        0   140
#> [395,]  71  13      1          8        0   121
#> [396,]  70   4      1          0        1   140
#> [397,]  72  10      1          8        1   153
#> [398,]  69   7      0        180        1   144
#> [399,]  70   8      0          8        0   120
#> [400,]  71  10      1          9        1   120
#> [401,]  75   2      1          1        0   145
#> [402,]  73  10      1          9        1   146
#> [403,]  74  15      1          9        1   179
#> [404,]  71   2      0         10        1   112
#> [405,]  73   1      0          1        1    80
#> [406,]  75   9      1          7        0   140
#> [407,]  75  13      1          1        1   130
#> [408,]  72  15      1         12        1   120
#> [409,]  73  10      1          8        0   120
#> [410,]  70   7      1          4        0   184
#> [411,]  72   1      1          1        0   168
#> [412,]  72   7      0         57        1   145
#> [413,]  73  10      0        180        0   162
#> [414,]  72  11      0         11        1   140
#> [415,]  70   3      0          3        0   150
#> [416,]  73   5      1          3        1   112
#> [417,]  76  25      1         12        1   170
#> [418,]  72   2      0        180        0   120
#> [419,]  75   1      0        180        1   140
#> [420,]  71   3      1          0        0   144
#> [421,]  73   5      0        180        0   126
#> [422,]  73   4      0        180        0   124
#> [423,]  72   5      0        180        0   154
#> [424,]  72   3      0        180        0   160
#> [425,]  77  11      0         11        1   150
#> [426,]  77   4      0          4        0   185
#> [427,]  75   3      1          1        0   180
#> [428,]  73  15      0         15        1   160
#> [429,]  71  16      0        180        0   140
#> [430,]  74   3      0          3        1   128
#> [431,]  74   2      1          1        0   140
#> [432,]  76   8      1          0        1   141
#> [433,]  74  19      1          4        1   200
#> [434,]  73   6      0          6        1   114
#> [435,]  75  23      1         14        1   110
#> [436,]  72   4      0         85        1   120
#> [437,]  72   4      1          3        0   160
#> [438,]  76  17      1          0        1   200
#> [439,]  73   4      1          3        1   125
#> [440,]  75   4      1          0        1   122
#> [441,]  73  13      1         11        0   195
#> [442,]  74   8      1          0        1   105
#> [443,]  75   4      1          2        1   188
#> [444,]  74   6      0        180        0   160
#> [445,]  74   2      0        180        0   111
#> [446,]  73   0      0        180        0   156
#> [447,]  72   5      0        180        0   120
#> [448,]  78  12      1         11        1   160
#> [449,]  76  44      1         10        0   105
#> [450,]  76   5      0        180        0   185
#> [451,]  74  10      1          0        1   135
#> [452,]  76   5      1          0        1   167
#> [453,]  74   8      1          8        1   170
#> [454,]  73  33      1         12        1   175
#> [455,]  77   5      1          0        0   123
#> [456,]  77  12      0        180        0   130
#> [457,]  77   1      1          0        1    90
#> [458,]  74   6      0         79        1   140
#> [459,]  75   3      1          1        1   171
#> [460,]  74   9      1          8        0   200
#> [461,]  79  10      1          8        0   190
#> [462,]  74   2      1          0        1   130
#> [463,]  76  29      0         47        0    90
#> [464,]  73   8      1          1        1   162
#> [465,]  73  11      1          2        1   110
#> [466,]  74   2      0        180        0   100
#> [467,]  78   7      0          7        1   133
#> [468,]  74  15      0        180        1   172
#> [469,]  78   8      1          6        1   110
#> [470,]  78  32      1          9        1   198
#> [471,]  79   6      0        180        0   170
#> [472,]  80  10      1          6        1   147
#> [473,]  78   0      0        180        1   212
#> [474,]  75   5      0        119        1   150
#> [475,]  75  12      1          1        1   120
#> [476,]  78  15      0        180        1   270
#> [477,]  75  13      1          6        0   150
#> [478,]  74  10      1          8        0   135
#> [479,]  76   1      0          1        1    83
#> [480,]  79   4      0         80        0   145
#> [481,]  78   2      1          1        0   130
#> [482,]  75   4      1          0        0   212
#> [483,]  77   2      1          0        1   143
#> [484,]  76  11      1          0        0   120
#> [485,]  75  11      1          4        0   162
#> [486,]  76   7      0         29        1   150
#> [487,]  79   8      0         32        1   120
#> [488,]  80   9      0         23        1   128
#> [489,]  80   6      0          6        1   150
#> [490,]  78   6      1          0        1   240
#> [491,]  76   3      1          0        1   140
#> [492,]  79  11      0        180        0   160
#> [493,]  79   2      1          0        1   121
#> [494,]  78  14      1          0        1   140
#> [495,]  81   1      0          1        0   130
#> [496,]  78  11      1          8        1   118
#> [497,]  76   4      0          4        1   160
#> [498,]  79   4      0          4        1   125
#> [499,]  76  10      1          8        0   180
#> [500,]  77   6      0          6        1   107
#> [501,]  80   3      1          0        1   120
#> [502,]  75   2      1          1        1   204
#> [503,]  78  11      0        180        1   135
#> [504,]  76   1      0          1        1   140
#> [505,]  76   1      0          1        1    90
#> [506,]  78   7      1          0        1   110
#> [507,]  79   3      0          3        0   120
#> [508,]  77   7      0        180        1   170
#> [509,]  81   1      0        180        0   120
#> [510,]  80  15      1         12        1   150
#> [511,]  77   9      1          4        0   141
#> [512,]  82   5      0          8        1   120
#> [513,]  80  40      1          0        1   138
#> [514,]  76   7      0        161        0   151
#> [515,]  80  15      1          0        1    90
#> [516,]  81   4      1          2        1   126
#> [517,]  80   6      0        173        1   160
#> [518,]  79   1      0         37        1   140
#> [519,]  81   3      0        180        0   184
#> [520,]  81   2      0        175        0   172
#> [521,]  77  13      1          0        1   190
#> [522,]  78  15      0         15        0   165
#> [523,]  79   3      0          3        1   101
#> [524,]  78  26      1          5        0   194
#> [525,]  76   1      0        166        0   131
#> [526,]  81   4      1          1        1   104
#> [527,]  80   1      0          1        0   100
#> [528,]  78   3      1          1        1   152
#> [529,]  77  10      1          8        1   130
#> [530,]  82   3      1          1        1   144
#> [531,]  77   5      0         85        0   188
#> [532,]  80   2      1          1        0   168
#> [533,]  80   6      1          0        1   119
#> [534,]  78   2      0        180        0   148
#> [535,]  80   5      0          5        1   130
#> [536,]  82   1      1          0        1    82
#> [537,]  79  10      0        180        1   150
#> [538,]  77   4      0        180        1    98
#> [539,]  81   1      0        108        0   129
#> [540,]  78  12      0        180        0   134
#> [541,]  79   1      0        125        0   193
#> [542,]  82  21      1          2        0   155
#> [543,]  84  22      1         10        0   180
#> [544,]  79   4      0          4        1   121
#> [545,]  80   6      0          6        1   110
#> [546,]  83   9      1          5        1   170
#> [547,]  83   5      0        180        0   148
#> [548,]  81  11      1          8        0   160
#> [549,]  78  23      1         10        1   145
#> [550,]  79   4      0          4        1   183
#> [551,]  78   9      1          4        1   120
#> [552,]  82   8      1          1        0   128
#> [553,]  80   7      1          0        1   146
#> [554,]  84   5      1          1        1    85
#> [555,]  81  20      1          9        0   170
#> [556,]  83   8      0          8        0   115
#> [557,]  81  16      0         16        1   110
#> [558,]  80  11      1          8        0   110
#> [559,]  81   8      0        180        0   146
#> [560,]  80   8      1          7        0   160
#> [561,]  79   7      0        177        0   197
#> [562,]  79   0      1          0        1    96
#> [563,]  85   4      0        180        0    90
#> [564,]  82   6      0        128        1   100
#> [565,]  84   4      0        167        0   198
#> [566,]  82  23      1          0        0   110
#> [567,]  84   5      0        180        1   203
#> [568,]  84   4      0          4        1    85
#> [569,]  84   1      0         38        1   205
#> [570,]  83   3      0        180        0   174
#> [571,]  81   4      0         90        1   138
#> [572,]  79   9      1          8        0   150
#> [573,]  85   3      1          2        1   160
#> [574,]  84   4      0         89        1   129
#> [575,]  80   2      1          0        1   130
#> [576,]  79   4      0          4        1    60
#> [577,]  83   1      0          1        1   100
#> [578,]  80  30      1         13        0   220
#> [579,]  83   9      0        180        0   198
#> [580,]  79  14      1          0        0   110
#> [581,]  83   3      0        114        0    98
#> [582,]  81  14      1         12        1   128
#> [583,]  82   0      0          2        1   100
#> [584,]  84  15      1         13        1   110
#> [585,]  81   1      0          1        1   145
#> [586,]  82  16      1          8        0   103
#> [587,]  82   5      1          0        1   146
#> [588,]  81   4      0          4        0   160
#> [589,]  86  12      0        180        1   120
#> [590,]  83  12      1          2        1   170
#> [591,]  82   3      1          2        0   130
#> [592,]  83   7      0        126        0   135
#> [593,]  84   6      0        165        0   145
#> [594,]  82   9      0        180        1   134
#> [595,]  84   3      0        180        1   120
#> [596,]  81  13      0        180        0   152
#> [597,]  81   2      1          0        1   118
#> [598,]  86  12      1          0        1   132
#> [599,]  82  14      1         11        1   103
#> [600,]  84  16      0         70        1   150
#> [601,]  83  19      0         43        0   150
#> [602,]  84   3      1          2        0   125
#> [603,]  86   2      0        180        1   169
#> [604,]  88  14      1          3        1   130
#> [605,]  84   3      0          3        1   121
#> [606,]  84   7      1          2        0   148
#> [607,]  87   2      0        180        0   113
#> [608,]  82   4      0          4        0   130
#> [609,]  86  13      0        177        0   163
#> [610,]  85   3      0          3        1   113
#> [611,]  86   6      0          6        1   117
#> [612,]  84  13      0         62        1   100
#> [613,]  88   4      0          4        0   100
#> [614,]  83  20      1          3        1   150
#> [615,]  88   4      0          4        1   115
#> [616,]  87   2      0        180        1   130
#> [617,]  88   3      0        115        0   110
#> [618,]  83   3      0          3        1   130
#> [619,]  87   8      0          8        1   157
#> [620,]  88   4      0          4        0    86
#> [621,]  89   4      0          4        1   153
#> [622,]  89   5      0        119        1   140
#> [623,]  87   6      0        180        1   110
#> [624,]  87   1      0          1        0   170
#> [625,]  85   8      0          8        1   136
#> [626,]  84   2      0        110        1   174
#> [627,]  87  29      0         29        1    97
#> [628,]  87  15      1          9        1   138
#> [629,]  89  10      0         46        1   170
#> [630,]  86   4      0        180        1   145
#> [631,]  91   8      0          8        0   100
#> [632,]  87   6      1          0        0   125
#> [633,]  86   3      1          0        1    80
#> [634,]  88   7      0         24        0   119
#> [635,]  90  11      1         10        1   186
#> [636,]  87   6      0        126        1   168
#> [637,]  86  10      0        180        1   137
#> [638,]  86   9      1          7        0   130
#> [639,]  91   1      0          1        1    74
#> [640,]  87  43      0        178        1   130
#> [641,]  87   5      0         36        1   150
#> [642,]  90   5      1          0        1   125
#> [643,]  89   3      1          1        1   160
#> [644,]  92   1      0          1        1   167
#> [645,]  91   3      0         33        1   137
#> [646,]  88   5      0        158        0   100
#> [647,]  87   7      0         74        1   105
#> [648,]  89  12      1          0        1   130
#> [649,]  89   2      0        168        0   118
#> [650,]  91   5      0        169        1   176
#> [651,]  89  52      0         52        1   130
#> [652,]  92   7      0          7        1   110
#> [653,]  89   4      0          4        1   159
#> [654,]  91   0      0          0        0     0
#> [655,]  89  14      0        180        1    84
#> [656,]  90  18      0        180        0   188
#> [657,]  90  19      1         11        1   129
#> [658,]  90   1      0          1        1   118
#> [659,]  91   2      0          2        1   116
#> [660,]  93   8      0        179        1   110
#> [661,]  94   8      0          8        1   142
#> [662,]  91   1      0        180        0   158
#> [663,]  90  16      0         16        1   106
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91   7      0          7        0   135
#> [667,]  92   5      0         69        0   139
#> [668,]  92   2      0          2        0   112
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 115.0 
#>  [11] 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+   5.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+   5.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+   5.0+ 161.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+   7.0  180.0+ 180.0+   2.0  179.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+   4.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+   4.0+  85.0 
#>  [91] 180.0+ 166.0+  99.0  180.0+  16.0+ 180.0+ 152.0+   7.0+   6.0+  13.0+
#> [101] 180.0+ 174.0+  28.0    1.0  180.0+   9.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [111]   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  15.0+ 180.0+ 180.0+
#> [121] 180.0+  12.0+   3.0+ 180.0+ 180.0+ 180.0+ 140.0  180.0+   1.0  165.0 
#> [131] 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+
#> [141] 180.0+ 171.0+  15.0  166.0+ 180.0+   5.0+ 180.0+ 180.0+   9.0+   2.0+
#> [151] 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+   0.5  161.0+ 171.0+
#> [161] 180.0+   1.0  180.0+  10.0+ 180.0+  45.0    3.0+ 180.0+ 180.0+   9.0+
#> [171] 172.0+ 180.0+   8.0  180.0+   1.0+ 180.0+ 180.0+  13.0+ 180.0+  94.0 
#> [181]   7.0+   6.0  180.0+ 180.0+  30.0  180.0+  13.0+   5.0  180.0+ 180.0+
#> [191]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+
#> [201] 180.0+   9.0  180.0+   7.0+ 180.0+ 180.0+   1.0  180.0+   4.0+   3.0+
#> [211] 167.0    6.0+ 180.0+ 180.0+  17.0   12.0  180.0+ 180.0+  14.0+ 180.0+
#> [221]   3.0+  88.0  180.0+  12.0  180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+
#> [231] 180.0+  12.0  180.0+   9.0    3.0  180.0+ 180.0+ 180.0+  11.0+  18.0+
#> [241] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+  15.0   13.0  166.0+
#> [251]  14.0+   3.0    0.5+   3.0+ 175.0+ 180.0+   8.0  180.0+ 180.0+ 180.0+
#> [261] 180.0+ 123.0+   1.0+  18.0   79.0   80.0   15.0+ 180.0+   4.0+  15.0 
#> [271] 180.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+   8.0+   3.0  175.0 
#> [281] 180.0+  10.0  180.0+ 180.0+   6.0   12.0   99.0  180.0+ 179.0+ 180.0+
#> [291] 180.0+  11.0+   0.5    7.0+ 180.0+ 152.0+  93.0  180.0+   1.0   18.0+
#> [301] 101.0    4.0    5.0    7.0+ 150.0  180.0+   1.0  180.0+ 180.0+ 171.0 
#> [311] 180.0+ 174.0+   6.0  180.0+   0.5  180.0+ 180.0+ 180.0+  14.0+   7.0+
#> [321]   2.0   45.0    5.0+ 103.0    3.0+  36.0    5.0+ 180.0+  97.0  180.0+
#> [331]   8.0+ 180.0+   2.0+ 180.0+  18.0  172.0+ 180.0+   7.0  180.0+   7.0 
#> [341] 123.0  180.0+  19.0  180.0+   1.0    1.0   60.0   76.0  180.0+ 132.0 
#> [351] 180.0+ 162.0    7.0+ 124.0  180.0+ 180.0+ 152.0   76.0  180.0+ 180.0+
#> [361]  28.0  180.0+ 180.0+  16.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+
#> [371]   7.0+  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+
#> [381] 180.0+   0.5  180.0+ 180.0+   8.0   87.0   12.0  180.0+   4.0+  58.0 
#> [391] 180.0+ 180.0+   3.0  180.0+ 175.0  180.0+  10.0+ 180.0+   8.0+ 179.0+
#> [401] 180.0+ 180.0+ 180.0+  10.0    1.0  180.0+  13.0  180.0+  10.0  104.0+
#> [411]   1.0   57.0  180.0+  11.0    3.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+
#> [421] 180.0+ 180.0+ 180.0+ 180.0+  11.0+   4.0+ 180.0+  15.0+ 180.0+   3.0 
#> [431] 180.0+ 180.0+ 180.0+   6.0  180.0+  85.0  180.0+  17.0+ 180.0+   4.0 
#> [441] 180.0+ 180.0+  46.0  180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+
#> [451] 180.0+ 180.0+   8.0   33.0    5.0  180.0+   1.0   79.0    3.0  168.0+
#> [461] 180.0+ 176.0+  47.0  180.0+  11.0  180.0+   7.0  180.0+   8.0+  32.0 
#> [471] 180.0+  10.0  180.0+ 119.0   12.0  180.0+ 180.0+ 180.0+   1.0   80.0 
#> [481] 180.0+   4.0+   2.0   11.0  152.0+  29.0   32.0   23.0    6.0  180.0+
#> [491]   3.0+ 180.0+ 180.0+ 180.0+   1.0   11.0    4.0    4.0   10.0+   6.0 
#> [501]   3.0+   2.0+ 180.0+   1.0    1.0   43.0    3.0  180.0+ 180.0+ 180.0+
#> [511]  71.0    8.0   40.0  161.0  180.0+  93.0  173.0   37.0  180.0+ 175.0+
#> [521]  22.0   15.0+   3.0  171.0+ 166.0+  71.0    1.0    3.0+  10.0  180.0+
#> [531]  85.0   10.0    6.0  180.0+   5.0    1.0  180.0+ 180.0+ 108.0  180.0+
#> [541] 125.0  180.0+ 180.0+   4.0    6.0    9.0+ 180.0+ 180.0+  70.0    4.0 
#> [551] 180.0+ 180.0+   7.0+ 180.0+  20.0    8.0+  16.0  180.0+ 180.0+ 180.0+
#> [561] 177.0+   0.5  180.0+ 128.0  167.0   62.0  180.0+   4.0   38.0  180.0+
#> [571]  90.0  180.0+ 180.0+  89.0  180.0+   4.0    1.0   30.0  180.0+ 180.0+
#> [581] 114.0  180.0+   2.0  180.0+   1.0   16.0+   5.0+   4.0+ 180.0+  77.0 
#> [591]   3.0  126.0  165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 174.0   70.0 
#> [601]  43.0  180.0+ 180.0+  14.0    3.0  180.0+ 180.0+   4.0  177.0    3.0+
#> [611]   6.0+  62.0    4.0+  20.0    4.0  180.0+ 115.0    3.0+   8.0+   4.0 
#> [621]   4.0  119.0  180.0+   1.0+   8.0  110.0   29.0  180.0+  46.0  180.0+
#> [631]   8.0   25.0    3.0   24.0   11.0  126.0  180.0+ 180.0+   1.0  178.0+
#> [641]  36.0   89.0    3.0+   1.0   33.0  158.0   74.0  180.0+ 168.0  169.0 
#> [651]  52.0    7.0    4.0    0.5  180.0+ 180.0+ 180.0+   1.0+   2.0  179.0+
#> [661]   8.0+ 180.0+  16.0    8.0   26.0    7.0+  69.0    2.0  180.0+  15.0+
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
#>   0.8399006 
```
