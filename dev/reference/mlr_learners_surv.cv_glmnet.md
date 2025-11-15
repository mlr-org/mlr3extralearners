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
#> min 0.00332    45   2.952 0.1001       6
#> 1se 0.05940    14   3.044 0.1027       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   5      1          2        0   172
#>   [5,]  35  10      1          9        0   106
#>   [6,]  34   5      0          5        0   120
#>   [7,]  35   2      0        180        0   121
#>   [8,]  37   9      0        180        1   151
#>   [9,]  38   2      0        115        0   150
#>  [10,]  35   0      0        180        1   119
#>  [11,]  38  16      1         10        0   160
#>  [12,]  38  12      1         11        1    92
#>  [13,]  40  12      1          9        0   153
#>  [14,]  37   1      1          0        1   146
#>  [15,]  40   2      1          1        1   148
#>  [16,]  42   2      0        180        1   100
#>  [17,]  38   5      1          3        0   125
#>  [18,]  42   2      0          2        0   140
#>  [19,]  40  11      1         10        1   120
#>  [20,]  42   2      0        180        0   100
#>  [21,]  41   2      1          1        0   166
#>  [22,]  40   1      1          0        1   145
#>  [23,]  43   4      1          0        1   130
#>  [24,]  42   4      0        180        0   162
#>  [25,]  42  15      1         13        1   125
#>  [26,]  40   3      1          1        0   170
#>  [27,]  42  12      1         10        1   170
#>  [28,]  43   2      1          1        1   116
#>  [29,]  42   2      0        180        1   124
#>  [30,]  44   5      1          1        0   170
#>  [31,]  45   9      1          7        0   110
#>  [32,]  45   6      0        180        1   170
#>  [33,]  44   2      1          1        1   150
#>  [34,]  43   2      0        180        1   140
#>  [35,]  46  15      0        180        0   120
#>  [36,]  47   4      1          3        0   118
#>  [37,]  48  15      0        180        1   160
#>  [38,]  44   3      1          0        1   180
#>  [39,]  46   7      1          2        0   166
#>  [40,]  43  10      0        180        0   185
#>  [41,]  47   6      1          0        1   116
#>  [42,]  44   0      1          0        1    96
#>  [43,]  43   3      1          0        1   124
#>  [44,]  45   8      1          0        1   117
#>  [45,]  49   5      0         73        1   136
#>  [46,]  45   5      0          5        0   141
#>  [47,]  46   6      1          0        1   100
#>  [48,]  47   2      0        180        0   108
#>  [49,]  45   5      0        180        1   190
#>  [50,]  46   4      0        180        1   121
#>  [51,]  44   2      0        180        0   142
#>  [52,]  46  15      0        180        1   120
#>  [53,]  45   9      1          0        1   145
#>  [54,]  48   3      0        180        0   154
#>  [55,]  47   9      1          6        0   170
#>  [56,]  49   4      0        180        0   117
#>  [57,]  50   1      1          0        1   129
#>  [58,]  48   2      1          0        0   184
#>  [59,]  50   6      1          2        1   140
#>  [60,]  49   7      1          7        1   110
#>  [61,]  46   3      1          1        1   140
#>  [62,]  46   9      1          9        1   122
#>  [63,]  47   2      0        180        0   150
#>  [64,]  49  23      0        179        1   112
#>  [65,]  46   6      1          0        1   156
#>  [66,]  52   2      0        180        1   170
#>  [67,]  50   7      1          0        1    92
#>  [68,]  50   4      0          4        1   100
#>  [69,]  51   3      1          2        0   113
#>  [70,]  50   9      0        180        0   130
#>  [71,]  47   8      0        180        0   160
#>  [72,]  47   6      0        180        1   162
#>  [73,]  51   8      0        180        1   140
#>  [74,]  46   3      0        180        1   120
#>  [75,]  50   4      1          1        0   150
#>  [76,]  48   7      1          0        1   110
#>  [77,]  53   8      0         36        1   160
#>  [78,]  48  17      1         10        0   111
#>  [79,]  47   2      1          1        0   110
#>  [80,]  52   4      1          4        0   152
#>  [81,]  49   9      1          3        0   102
#>  [82,]  49  15      0        180        1   160
#>  [83,]  54   6      1          3        0   129
#>  [84,]  50   2      0          5        1   106
#>  [85,]  53   8      1          7        0   160
#>  [86,]  51  25      1          1        0   202
#>  [87,]  53   4      0          4        0   140
#>  [88,]  48   6      0        180        0   160
#>  [89,]  53   4      1          0        1   156
#>  [90,]  51  13      0         99        1   160
#>  [91,]  54   9      1          0        1   138
#>  [92,]  55   3      1          1        0   150
#>  [93,]  52   7      1          2        0   154
#>  [94,]  51  13      1         11        0   145
#>  [95,]  50   5      1          4        1   150
#>  [96,]  54   4      1          0        1   121
#>  [97,]  55  28      1         13        1   160
#>  [98,]  49   6      1          0        1   130
#>  [99,]  49   1      0          1        1   110
#> [100,]  50   7      1          1        0   156
#> [101,]  53   9      0          9        1    95
#> [102,]  53   8      1          0        1   130
#> [103,]  52   5      0        175        1   117
#> [104,]  55   1      0        180        0   127
#> [105,]  56   3      0        180        1   193
#> [106,]  56   2      0        180        0   132
#> [107,]  55   5      1          4        1   120
#> [108,]  52   8      0        180        0   119
#> [109,]  53  18      1          9        1   150
#> [110,]  54   3      0        180        1   180
#> [111,]  53  10      1          9        0   172
#> [112,]  52  16      1         14        0   170
#> [113,]  53   4      0        180        1   150
#> [114,]  55   6      1          5        1   138
#> [115,]  54  12      1          0        1   190
#> [116,]  55   2      0        134        1   140
#> [117,]  54   3      0        180        0   128
#> [118,]  54   2      1          1        0   135
#> [119,]  57   1      0        180        1   156
#> [120,]  56   4      1          0        1   140
#> [121,]  55  11      1          7        0   104
#> [122,]  52  15      1         14        0   130
#> [123,]  56  14      1         11        0   130
#> [124,]  57  10      0        180        1   170
#> [125,]  57   0      0          0        1   150
#> [126,]  53  21      1         13        1   130
#> [127,]  59   3      1          1        0   172
#> [128,]  57   4      0        180        1   119
#> [129,]  53  15      1         10        1   130
#> [130,]  54  17      1          8        1   227
#> [131,]  55   9      1          2        1   147
#> [132,]  55  13      0        166        1   140
#> [133,]  56   5      0          5        1   150
#> [134,]  54  23      1          8        0   120
#> [135,]  57   4      1          2        1   185
#> [136,]  57  11      1         10        1   129
#> [137,]  55   3      1          2        0   140
#> [138,]  55   5      0          5        1   131
#> [139,]  54   7      1          0        1   141
#> [140,]  56   4      0          4        0   164
#> [141,]  58   9      1          0        1   180
#> [142,]  58   1      1          1        1   200
#> [143,]  55   5      1          0        0   140
#> [144,]  56   7      1          5        1   120
#> [145,]  55   2      0          2        0   106
#> [146,]  59   9      1          1        1   125
#> [147,]  60  11      1          9        0   106
#> [148,]  59   3      0        180        0   120
#> [149,]  58   4      1          0        1   160
#> [150,]  60   5      1          1        0   138
#> [151,]  57   5      0        180        1   130
#> [152,]  58  11      1          9        1   124
#> [153,]  57  10      1          9        0   103
#> [154,]  59   6      1          0        1   140
#> [155,]  59   5      0        180        1   155
#> [156,]  59   4      1          0        1   152
#> [157,]  61   9      0          9        1   160
#> [158,]  60   0      1          0        1    80
#> [159,]  59   2      1          1        0   140
#> [160,]  58   8      0        161        1   140
#> [161,]  61   9      1          8        0   150
#> [162,]  61   3      1          2        1   102
#> [163,]  61  20      1         13        0   130
#> [164,]  58  10      0         10        1   150
#> [165,]  57  11      0        180        1   150
#> [166,]  61   3      0         17        0   143
#> [167,]  56  18      1         11        1   165
#> [168,]  59   9      1          0        1    80
#> [169,]  55   9      1          7        1   135
#> [170,]  61   4      1          0        1   115
#> [171,]  61  13      1         12        1   130
#> [172,]  59  11      1          8        1   190
#> [173,]  57   1      0          1        0   126
#> [174,]  57  15      1         13        1   110
#> [175,]  59   5      1          2        0   182
#> [176,]  58   5      1          1        1   135
#> [177,]  61   8      0         77        0   120
#> [178,]  61  13      0         13        0   210
#> [179,]  62   7      1          2        1   180
#> [180,]  57   3      1          0        0   100
#> [181,]  61  18      0        170        0   140
#> [182,]  61  28      1          7        0   133
#> [183,]  57   7      0        169        0   180
#> [184,]  61   7      0          7        1   150
#> [185,]  60   7      0          7        0   147
#> [186,]  61   6      0          6        0   134
#> [187,]  57  12      1          9        1   120
#> [188,]  62   4      1          0        0   160
#> [189,]  60  17      1          8        1   140
#> [190,]  58   3      1          0        1   146
#> [191,]  62   4      1          3        0   173
#> [192,]  58   2      0         30        0   202
#> [193,]  63   6      0         28        1   120
#> [194,]  61  13      0         13        0   120
#> [195,]  57  18      1          9        1    93
#> [196,]  58  11      1          9        0   179
#> [197,]  57   2      1          1        0   159
#> [198,]  62   1      1          0        1   172
#> [199,]  61   7      0        180        0   135
#> [200,]  63   4      1          3        0   222
#> [201,]  62   3      0        180        1   105
#> [202,]  63   4      0        180        1   190
#> [203,]  63  15      1         10        1   126
#> [204,]  63   4      1          1        0   155
#> [205,]  60  18      1         13        0   132
#> [206,]  61   9      1          9        1   150
#> [207,]  58   9      1          9        0   110
#> [208,]  62   7      0          7        0   150
#> [209,]  59   1      0         22        1   162
#> [210,]  58   2      0        180        0   127
#> [211,]  60   7      0          7        0   140
#> [212,]  59   5      1          1        0   148
#> [213,]  60   7      1          1        1    90
#> [214,]  63   1      0          1        0   162
#> [215,]  62   6      0        180        0   170
#> [216,]  61  15      1         13        0   170
#> [217,]  59   4      0          4        0   149
#> [218,]  64  10      1          9        0   160
#> [219,]  60   8      0         17        1   130
#> [220,]  61   6      1          1        1   117
#> [221,]  66   1      1          0        1   120
#> [222,]  63  10      1          0        1   148
#> [223,]  61  10      1          2        1   194
#> [224,]  63  12      1          9        0   114
#> [225,]  63   7      0        180        0   120
#> [226,]  66   5      1          0        1   110
#> [227,]  65   8      1          0        0   168
#> [228,]  65  10      1          8        1   120
#> [229,]  60   6      0        180        0   130
#> [230,]  64  21      1         10        0   190
#> [231,]  64   9      0        180        0   150
#> [232,]  63  16      1          7        1   110
#> [233,]  64   7      0        180        1   120
#> [234,]  66   6      1          1        1   130
#> [235,]  63  12      0         12        1   150
#> [236,]  63   5      1          4        0   170
#> [237,]  62  13      1         11        0   180
#> [238,]  67  11      0         11        1   100
#> [239,]  64   2      0          2        0   201
#> [240,]  66  16      1         11        1   169
#> [241,]  62   9      0        180        0   145
#> [242,]  61  14      1          5        0   140
#> [243,]  61  15      1         10        0   130
#> [244,]  63   9      1          8        1   160
#> [245,]  63   2      1          0        0   140
#> [246,]  64  19      1          8        1   160
#> [247,]  65   8      1          0        1   140
#> [248,]  65  15      1         11        1   160
#> [249,]  64   6      1          0        1   125
#> [250,]  64  14      1         13        1   150
#> [251,]  64   0      0          0        1   148
#> [252,]  67   4      1          3        0   130
#> [253,]  66   3      1          0        1   135
#> [254,]  65   2      1          1        1   170
#> [255,]  68   1      0        180        1   166
#> [256,]  64  10      1          9        1   110
#> [257,]  63   7      1          0        0   162
#> [258,]  67   8      1          1        1   130
#> [259,]  68   5      0          5        1    90
#> [260,]  63  10      0         16        1   160
#> [261,]  64   1      0          1        1   120
#> [262,]  68  18      0        180        1   260
#> [263,]  65  17      1         14        1   100
#> [264,]  63   8      1          1        1   162
#> [265,]  63  10      0         18        1   130
#> [266,]  67  11      0         11        0   150
#> [267,]  68  11      0        180        0   160
#> [268,]  66  12      1         10        1   150
#> [269,]  65  15      1         12        1   150
#> [270,]  66  11      1          0        0   100
#> [271,]  65   4      1          2        1   145
#> [272,]  63   2      0        180        0   150
#> [273,]  65  11      1          6        0   130
#> [274,]  63   8      0        180        1   120
#> [275,]  68  14      1         13        1   140
#> [276,]  65   8      1          0        1    90
#> [277,]  69   1      1          0        0   170
#> [278,]  67   1      0        180        1   160
#> [279,]  68  10      1         10        1   150
#> [280,]  65   1      1          0        0   133
#> [281,]  67   7      1          4        1   130
#> [282,]  63   2      1          0        0    99
#> [283,]  67   2      0        180        0   184
#> [284,]  65   6      0          6        0    80
#> [285,]  65  10      1          1        1   148
#> [286,]  67  12      1         12        0   160
#> [287,]  69   6      0         99        1   140
#> [288,]  64   4      0        179        0   160
#> [289,]  66   4      0        180        1   130
#> [290,]  70  15      1         12        1   132
#> [291,]  64  11      0         11        0   125
#> [292,]  64   4      0        180        1   140
#> [293,]  64   0      1          0        1   118
#> [294,]  67   2      0         18        0   131
#> [295,]  66   7      1          5        1   131
#> [296,]  66   4      0        180        0   177
#> [297,]  68   4      1          0        1   160
#> [298,]  65  13      1         12        1   130
#> [299,]  69   8      0         93        0   140
#> [300,]  64  21      0         21        1   155
#> [301,]  68  18      1          0        1   160
#> [302,]  68   4      0          4        1   190
#> [303,]  71   3      0          5        0   112
#> [304,]  70   7      1          0        1   190
#> [305,]  68   7      0        150        0   210
#> [306,]  71  20      1          0        1   160
#> [307,]  67   2      0        180        0   128
#> [308,]  66   1      1          1        1   165
#> [309,]  70   4      1          0        1   180
#> [310,]  69   8      0        180        1   153
#> [311,]  70  14      0        171        0   166
#> [312,]  67   6      1          4        0   130
#> [313,]  69   0      0          0        1   148
#> [314,]  68   7      1          0        1   150
#> [315,]  65  14      1         13        1   150
#> [316,]  69   8      0        180        1   180
#> [317,]  66   2      0          2        1   228
#> [318,]  71   6      0         45        1   158
#> [319,]  69   5      0          5        1   142
#> [320,]  71   3      0        103        0   133
#> [321,]  70  22      1         13        0   103
#> [322,]  67   1      0         36        1   104
#> [323,]  68   6      0        180        0   145
#> [324,]  72   3      1          0        1   132
#> [325,]  72   7      0          7        1   110
#> [326,]  69   8      1          7        1   108
#> [327,]  69  19      0        180        0   130
#> [328,]  68  18      0         18        1   100
#> [329,]  67  14      0        172        1   140
#> [330,]  69  11      1          0        1   120
#> [331,]  66   2      0        180        0   130
#> [332,]  67   7      1          4        0   122
#> [333,]  69   8      1          2        0   121
#> [334,]  67  13      1          9        0   130
#> [335,]  70   9      0        180        1   142
#> [336,]  72   5      1          4        0   170
#> [337,]  67  22      1          1        1   140
#> [338,]  68   3      0         19        0   135
#> [339,]  67  12      1          8        0   120
#> [340,]  69   1      0          1        1   110
#> [341,]  69   5      0         76        0   120
#> [342,]  67   8      1          0        1   130
#> [343,]  72  13      1         11        1   195
#> [344,]  68  10      1          8        1   160
#> [345,]  70  35      1          0        1   105
#> [346,]  72  30      1          0        1   145
#> [347,]  70   7      0          7        0   102
#> [348,]  73  20      1          0        1   170
#> [349,]  71   6      0          9        0   120
#> [350,]  69  10      1          6        1   120
#> [351,]  70  11      0        180        1   210
#> [352,]  72  19      1          8        0   120
#> [353,]  72  12      1         10        0   170
#> [354,]  67   8      0        180        1   170
#> [355,]  67   5      1          0        1   147
#> [356,]  67   9      0        180        0   158
#> [357,]  73  13      0        152        1   130
#> [358,]  70   5      0        180        0   150
#> [359,]  72   2      0          2        1   100
#> [360,]  67   4      1          1        0   134
#> [361,]  68  23      0        180        1   220
#> [362,]  70   3      0        180        0   121
#> [363,]  68   4      1          3        0   210
#> [364,]  71   5      0        180        0   191
#> [365,]  73   6      0        180        1   117
#> [366,]  69  16      1         10        1   140
#> [367,]  72  16      1          1        1   130
#> [368,]  73   6      1          0        1   270
#> [369,]  72   8      1          1        1   150
#> [370,]  71   2      1          0        1   180
#> [371,]  70   3      0          3        1   159
#> [372,]  72   6      0        180        1   130
#> [373,]  73   0      0        180        1   161
#> [374,]  74   8      1          0        1    85
#> [375,]  73   4      0        180        1   154
#> [376,]  71  15      1         11        0   165
#> [377,]  68   9      0        180        1   120
#> [378,]  71  20      1         10        0   140
#> [379,]  74   0      1          0        1    90
#> [380,]  73   3      1          0        1   136
#> [381,]  71   8      1          7        0   149
#> [382,]  71   3      1          2        1   190
#> [383,]  73  10      1          8        0   106
#> [384,]  73   4      0         58        1   160
#> [385,]  70   3      0        180        1   154
#> [386,]  71   7      1          2        0   143
#> [387,]  72   8      1          0        1   140
#> [388,]  74   3      0          3        1   150
#> [389,]  73  17      1         11        0   140
#> [390,]  71  13      1          8        0   121
#> [391,]  69   2      1          1        1    80
#> [392,]  70   4      1          0        1   140
#> [393,]  71  14      1         13        1   170
#> [394,]  74   7      1          0        1   117
#> [395,]  69   7      0        180        1   144
#> [396,]  72  15      1         13        0   156
#> [397,]  75   2      1          1        0   145
#> [398,]  73  10      1          9        1   146
#> [399,]  72  10      1          9        1   160
#> [400,]  74  15      1          9        1   179
#> [401,]  75   9      1          7        0   140
#> [402,]  75  13      1          1        1   130
#> [403,]  71  11      1          8        0   110
#> [404,]  71   4      0          4        0   134
#> [405,]  72  15      1         12        1   120
#> [406,]  73  10      1          8        0   120
#> [407,]  70   7      1          4        0   184
#> [408,]  72   7      0         57        1   145
#> [409,]  73  10      0        180        0   162
#> [410,]  72  11      0         11        1   140
#> [411,]  70   3      0          3        0   150
#> [412,]  73   5      1          3        1   112
#> [413,]  73  12      1         12        1   140
#> [414,]  72   2      0        180        0   120
#> [415,]  75   1      0        180        1   140
#> [416,]  72   4      1          0        1   197
#> [417,]  73   5      0        180        0   126
#> [418,]  71  32      1         12        1   107
#> [419,]  72   5      0        180        0   154
#> [420,]  72   3      0        180        0   160
#> [421,]  76   5      0          5        1   130
#> [422,]  77   4      0          4        0   185
#> [423,]  75   3      1          1        0   180
#> [424,]  72   7      1          2        0   142
#> [425,]  73  15      0         15        1   160
#> [426,]  71  16      0        180        0   140
#> [427,]  73  10      1         10        0   124
#> [428,]  74   7      0        180        1   150
#> [429,]  74   3      0          3        1   128
#> [430,]  76   1      0        180        0   114
#> [431,]  74   2      1          1        0   140
#> [432,]  76   8      1          0        1   141
#> [433,]  74  19      1          4        1   200
#> [434,]  73   6      0          6        1   114
#> [435,]  74   2      0        180        0   190
#> [436,]  72   4      1          3        0   160
#> [437,]  76  17      1          0        1   200
#> [438,]  73   4      1          3        1   125
#> [439,]  76  13      1         10        0   110
#> [440,]  75   4      1          0        1   122
#> [441,]  75   0      0          0        1   130
#> [442,]  75  12      0         12        1   160
#> [443,]  74   8      1          0        1   105
#> [444,]  75   4      1          2        1   188
#> [445,]  74   6      0        180        0   160
#> [446,]  76   4      0          4        1   155
#> [447,]  75   1      0          1        1   125
#> [448,]  74   2      0        180        0   111
#> [449,]  73   1      0         52        1   105
#> [450,]  73   0      0        180        0   156
#> [451,]  72   5      0        180        0   120
#> [452,]  78  12      1         11        1   160
#> [453,]  76  44      1         10        0   105
#> [454,]  76   5      0        180        0   185
#> [455,]  74  10      1          0        1   135
#> [456,]  74   8      1          8        1   170
#> [457,]  75   9      0        180        1   140
#> [458,]  73  33      1         12        1   175
#> [459,]  73  10      1          9        0   146
#> [460,]  77  12      0        180        0   130
#> [461,]  77   1      1          0        1    90
#> [462,]  76  12      1         11        1   120
#> [463,]  78   5      1          0        1   170
#> [464,]  74   9      1          8        0   200
#> [465,]  79  10      1          8        0   190
#> [466,]  74   2      1          0        1   130
#> [467,]  76  29      0         47        0    90
#> [468,]  73   8      1          1        1   162
#> [469,]  73  11      1          2        1   110
#> [470,]  74   2      0        180        0   100
#> [471,]  78   7      0          7        1   133
#> [472,]  74  15      0        180        1   172
#> [473,]  78   8      1          6        1   110
#> [474,]  74   7      0          7        0   161
#> [475,]  76  13      1          1        1   170
#> [476,]  79   6      0        180        0   170
#> [477,]  78  13      1          5        0   130
#> [478,]  75   5      0        119        1   150
#> [479,]  75  12      1          1        1   120
#> [480,]  78  15      0        180        1   270
#> [481,]  80   8      0          8        1   120
#> [482,]  75  13      1          6        0   150
#> [483,]  74  10      1          8        0   135
#> [484,]  76   1      0          1        1    83
#> [485,]  79   4      0         80        0   145
#> [486,]  78   2      1          1        0   130
#> [487,]  77   2      1          0        1   143
#> [488,]  76  11      1          0        0   120
#> [489,]  76   7      0         29        1   150
#> [490,]  79   8      0         32        1   120
#> [491,]  80   9      0         23        1   128
#> [492,]  80   6      0          6        1   150
#> [493,]  78   6      1          0        1   240
#> [494,]  76   3      1          0        1   140
#> [495,]  78  11      1          1        1   140
#> [496,]  79   2      1          0        1   121
#> [497,]  78  14      1          0        1   140
#> [498,]  81   1      0          1        0   130
#> [499,]  78  11      1          8        1   118
#> [500,]  76   4      0          4        1   160
#> [501,]  76  10      1          8        0   180
#> [502,]  76  12      1         10        1   127
#> [503,]  80   3      1          0        1   120
#> [504,]  75   2      1          1        1   204
#> [505,]  78  11      0        180        1   135
#> [506,]  76   1      0          1        1   140
#> [507,]  77  31      1          3        1   161
#> [508,]  76   1      0          1        1    90
#> [509,]  79   3      0          3        0   120
#> [510,]  77   7      0        180        1   170
#> [511,]  77   6      0          6        1   144
#> [512,]  79   4      1          0        1   120
#> [513,]  80  15      1         12        1   150
#> [514,]  77   9      1          4        0   141
#> [515,]  82   5      0          8        1   120
#> [516,]  80  40      1          0        1   138
#> [517,]  78   4      0         59        1   112
#> [518,]  80  17      1         12        0   100
#> [519,]  79  10      0         10        1   120
#> [520,]  81   4      1          2        1   126
#> [521,]  79  28      0        164        0   100
#> [522,]  80   9      0        118        1   186
#> [523,]  79   1      0         37        1   140
#> [524,]  78  15      0         15        0   165
#> [525,]  78   4      0        180        0   175
#> [526,]  79   3      0          3        1   101
#> [527,]  76   1      0        166        0   131
#> [528,]  81   4      1          1        1   104
#> [529,]  80   1      0          1        0   100
#> [530,]  78   3      1          1        1   152
#> [531,]  77  10      1          8        1   130
#> [532,]  82   3      1          1        1   144
#> [533,]  77   5      0         85        0   188
#> [534,]  80   2      1          1        0   168
#> [535,]  79   6      0          6        0   152
#> [536,]  80   6      1          0        1   119
#> [537,]  82   1      1          0        1    82
#> [538,]  79  10      0        180        1   150
#> [539,]  77   4      0        180        1    98
#> [540,]  78  12      0        180        0   134
#> [541,]  79   1      0        125        0   193
#> [542,]  82  21      1          2        0   155
#> [543,]  79   4      0          4        1   121
#> [544,]  80   6      0          6        1   110
#> [545,]  83   9      1          5        1   170
#> [546,]  82   5      0        180        0   110
#> [547,]  83   5      0        180        0   148
#> [548,]  79   7      1          6        0   130
#> [549,]  83   4      0        103        0    97
#> [550,]  81  11      1          8        0   160
#> [551,]  81   5      0        177        0    41
#> [552,]  78  23      1         10        1   145
#> [553,]  79   4      0          4        1   183
#> [554,]  78   9      1          4        1   120
#> [555,]  82   8      1          1        0   128
#> [556,]  81  15      0        180        1   140
#> [557,]  80   7      1          0        1   146
#> [558,]  84   5      1          1        1    85
#> [559,]  81  20      1          9        0   170
#> [560,]  83   8      0          8        0   115
#> [561,]  81  16      0         16        1   110
#> [562,]  80  11      1          8        0   110
#> [563,]  81   8      0        180        0   146
#> [564,]  80   8      1          7        0   160
#> [565,]  79   7      0        177        0   197
#> [566,]  81   2      1          1        0   198
#> [567,]  82   6      0        128        1   100
#> [568,]  80   3      1          1        1   230
#> [569,]  84   4      0          4        1    85
#> [570,]  81   1      0          1        1   150
#> [571,]  83   3      0        180        0   174
#> [572,]  81   4      0         90        1   138
#> [573,]  85   3      1          2        1   160
#> [574,]  84   4      0         89        1   129
#> [575,]  79   4      0          4        1    60
#> [576,]  82  19      0         19        0   120
#> [577,]  80  30      1         13        0   220
#> [578,]  79  14      1          0        0   110
#> [579,]  83   3      0        114        0    98
#> [580,]  81  14      1         12        1   128
#> [581,]  83   2      0        154        0   130
#> [582,]  85   9      1          6        1   160
#> [583,]  83   1      0        180        0   160
#> [584,]  84  15      1         13        1   110
#> [585,]  81   1      0          1        1   145
#> [586,]  81  12      0         12        1   163
#> [587,]  82  16      1          8        0   103
#> [588,]  82   5      1          0        1   146
#> [589,]  86  12      0        180        1   120
#> [590,]  83  12      1          2        1   170
#> [591,]  81  19      1         14        0   120
#> [592,]  82   3      1          2        0   130
#> [593,]  86   8      0          8        1   132
#> [594,]  81  16      1          9        0   180
#> [595,]  84   6      0        165        0   145
#> [596,]  84   3      0        180        1   120
#> [597,]  81  13      0        180        0   152
#> [598,]  85   3      0          3        1   118
#> [599,]  81   2      1          0        1   118
#> [600,]  82   1      0        180        1   193
#> [601,]  83   4      0          4        0   130
#> [602,]  87   2      0          5        1   137
#> [603,]  86  12      1          0        1   132
#> [604,]  82  14      1         11        1   103
#> [605,]  86   6      1          0        1   140
#> [606,]  84  16      0         70        1   150
#> [607,]  83  19      0         43        0   150
#> [608,]  84   3      1          2        0   125
#> [609,]  83  10      1          0        1   190
#> [610,]  88  14      1          3        1   130
#> [611,]  83  13      1         12        0   170
#> [612,]  84   7      1          2        0   148
#> [613,]  84   3      0        180        1   170
#> [614,]  82   4      0          4        0   130
#> [615,]  86  13      0        177        0   163
#> [616,]  84  13      0         62        1   100
#> [617,]  83  20      1          3        1   150
#> [618,]  83   9      0         65        1   150
#> [619,]  86   9      1          7        1   142
#> [620,]  87   2      0        180        1   130
#> [621,]  86   6      0         46        0   173
#> [622,]  88   3      0        115        0   110
#> [623,]  88   2      0        180        1    68
#> [624,]  83   3      0          3        1   130
#> [625,]  88   4      0          4        0    86
#> [626,]  89   4      0          4        1   153
#> [627,]  87   6      0        180        1   110
#> [628,]  87   1      0          1        0   170
#> [629,]  84   8      0        180        1   119
#> [630,]  87  15      1          9        1   138
#> [631,]  84   0      0        180        1   136
#> [632,]  89  10      0         46        1   170
#> [633,]  88   1      0          1        0   135
#> [634,]  91   8      0          8        0   100
#> [635,]  87   6      1          0        0   125
#> [636,]  86   3      1          0        1    80
#> [637,]  87   6      0        126        1   168
#> [638,]  90   4      1          0        0   121
#> [639,]  87  43      0        178        1   130
#> [640,]  90   5      1          0        1   125
#> [641,]  88   3      1          2        0   159
#> [642,]  92   1      0          1        1   167
#> [643,]  91   3      0         33        1   137
#> [644,]  88   5      0        158        0   100
#> [645,]  87   7      0         74        1   105
#> [646,]  89   2      0        168        0   118
#> [647,]  89  52      0         52        1   130
#> [648,]  89   4      0          4        1   159
#> [649,]  89  14      0        180        1    84
#> [650,]  91   4      1          0        1   120
#> [651,]  90  19      1         11        1   129
#> [652,]  94   6      0         50        0    78
#> [653,]  90   1      0          1        1   118
#> [654,]  91   2      0          2        1   116
#> [655,]  93   8      0        179        1   110
#> [656,]  94   8      0          8        1   142
#> [657,]  92   4      0         76        1   149
#> [658,]  91   1      0        180        0   158
#> [659,]  90  16      0         16        1   106
#> [660,]  90   3      0         67        0   162
#> [661,]  96   3      0         12        1    97
#> [662,]  94   3      0         26        1   144
#> [663,]  91  12      0         53        1   212
#> [664,]  91   7      0          7        0   135
#> [665,]  93   0      1          0        1   122
#> [666,]  92   5      0         69        0   139
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+ 180.0+ 115.0  180.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41]   6.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 172.0+ 180.0+ 180.0+   7.0 
#>  [61] 180.0+ 180.0+ 180.0+ 179.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+   4.0+
#>  [81] 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+   4.0+ 180.0+ 166.0+  99.0 
#>  [91] 180.0+ 180.0+   7.0+  13.0+ 171.0+ 180.0+  28.0    6.0+   1.0  180.0+
#> [101]   9.0+ 180.0+ 175.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [111] 180.0+  16.0  180.0+ 180.0+  12.0+ 134.0+ 180.0+ 180.0+ 180.0+ 165.0 
#> [121] 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 171.0+
#> [131]  15.0  166.0+   5.0+ 180.0+   4.0+ 180.0+ 180.0+   5.0+ 180.0+   4.0+
#> [141]   9.0+   1.0  180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [151] 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+   0.5  180.0+ 161.0+
#> [161] 180.0+   3.0  180.0+  10.0+ 180.0+  17.0  180.0+   9.0+  24.0  180.0+
#> [171] 180.0+ 180.0+   1.0+  15.0  180.0+ 180.0+  77.0   13.0+ 180.0+ 180.0+
#> [181] 170.0   94.0  169.0    7.0    7.0+   6.0  180.0+ 180.0+ 180.0+   3.0+
#> [191] 180.0+  30.0   28.0   13.0+  18.0  180.0+ 180.0+   1.0  180.0+ 180.0+
#> [201] 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+
#> [211]   7.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+   4.0+ 167.0   17.0  180.0+
#> [221] 180.0+ 180.0+  88.0   12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [231] 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+  11.0+   2.0+ 180.0+
#> [241] 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 103.0   15.0  180.0+ 180.0+  14.0+
#> [251]   0.5+ 180.0+   3.0+ 175.0+ 180.0+ 180.0+   7.0+   8.0    5.0   16.0 
#> [261]   1.0  180.0+ 180.0+ 180.0+  18.0   11.0+ 180.0+  80.0   15.0+ 180.0+
#> [271]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 175.0  180.0+  10.0  180.0+
#> [281] 180.0+ 180.0+ 180.0+   6.0  180.0+  12.0   99.0  179.0+ 180.0+ 180.0+
#> [291]  11.0+ 180.0+   0.5   18.0    7.0+ 180.0+ 180.0+ 180.0+  93.0   21.0+
#> [301]  18.0+   4.0    5.0    7.0+ 150.0  180.0+ 180.0+   1.0  180.0+ 180.0+
#> [311] 171.0    6.0    0.5  180.0+  14.0+ 180.0+   2.0   45.0    5.0+ 103.0 
#> [321] 180.0+  36.0  180.0+ 180.0+   7.0    8.0+ 180.0+  18.0  172.0+ 180.0+
#> [331] 180.0+   7.0    8.0+  13.0+ 180.0+ 180.0+  51.0   19.0  180.0+   1.0 
#> [341]  76.0  180.0+ 132.0   10.0+ 180.0+ 162.0    7.0+ 124.0    9.0  180.0+
#> [351] 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 152.0  180.0+   2.0   76.0 
#> [361] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+  16.0+   6.0  180.0+ 180.0+
#> [371]   3.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  20.0    0.5  180.0+
#> [381]   8.0    3.0   87.0   58.0  180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0 
#> [391]   2.0  180.0+  14.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 159.0  180.0+
#> [401] 180.0+  13.0  180.0+   4.0+ 180.0+  10.0  104.0+  57.0  180.0+  11.0 
#> [411]   3.0+   5.0   12.0  180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+
#> [421]   5.0    4.0+ 180.0+   7.0   15.0+ 180.0+  10.0  180.0+   3.0  180.0+
#> [431] 180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+  17.0+ 180.0+ 174.0+   4.0 
#> [441]   0.5   12.0  180.0+  46.0  180.0+   4.0    1.0  180.0+  52.0  180.0+
#> [451] 180.0+  12.0  180.0+ 180.0+ 180.0+   8.0  180.0+  33.0  180.0+ 180.0+
#> [461]   1.0   12.0  180.0+ 168.0+ 180.0+ 176.0+  47.0  180.0+  11.0  180.0+
#> [471]   7.0  180.0+   8.0+   7.0  180.0+ 180.0+ 172.0  119.0   12.0  180.0+
#> [481]   8.0  180.0+ 180.0+   1.0   80.0  180.0+   2.0   11.0   29.0   32.0 
#> [491]  23.0    6.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+   1.0   11.0    4.0 
#> [501]  10.0+ 180.0+   3.0+   2.0+ 180.0+   1.0  171.0    1.0    3.0  180.0+
#> [511]   6.0  138.0  180.0+  71.0    8.0   40.0   59.0   17.0   10.0+  93.0 
#> [521] 164.0  118.0   37.0   15.0+ 180.0+   3.0  166.0+  71.0    1.0    3.0+
#> [531]  10.0  180.0+  85.0   10.0    6.0+   6.0    1.0  180.0+ 180.0+ 180.0+
#> [541] 125.0  180.0+   4.0    6.0    9.0+ 180.0+ 180.0+ 180.0+ 103.0  180.0+
#> [551] 177.0+  70.0    4.0  180.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0    8.0+
#> [561]  16.0  180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 128.0    3.0+   4.0    1.0 
#> [571] 180.0+  90.0  180.0+  89.0    4.0   19.0   30.0  180.0+ 114.0  180.0+
#> [581] 154.0  180.0+ 180.0+ 180.0+   1.0   12.0   16.0+   5.0+ 180.0+  77.0 
#> [591] 180.0+   3.0    8.0  180.0+ 165.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+
#> [601]   4.0+   5.0  180.0+ 174.0    6.0   70.0   43.0  180.0+ 180.0+  14.0 
#> [611]  13.0  180.0+ 180.0+   4.0  177.0   62.0   20.0   65.0   11.0  180.0+
#> [621]  46.0  115.0  180.0+   3.0+   4.0    4.0  180.0+   1.0+ 180.0+ 180.0+
#> [631] 180.0+  46.0    1.0+   8.0   25.0    3.0  126.0    4.0  178.0+  89.0 
#> [641]  75.0    1.0   33.0  158.0   74.0  168.0   52.0    4.0  180.0+   4.0 
#> [651] 180.0+  50.0    1.0+   2.0  179.0+   8.0+  76.0  180.0+  16.0   67.0 
#> [661]  12.0   26.0   53.0    7.0+   0.5   69.0    2.0  180.0+   3.0   15.0+
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
#>   0.8496354 
```
