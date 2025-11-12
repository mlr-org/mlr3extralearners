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
#> min 0.00355    45   2.898 0.1807       6
#> 1se 0.08402    11   3.075 0.1598       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35  10      1          9        0   106
#>   [4,]  35   2      0        180        0   121
#>   [5,]  35   2      1          1        1   112
#>   [6,]  38  13      1          0        1   161
#>   [7,]  38   2      0        115        0   150
#>   [8,]  36   1      0        180        1   155
#>   [9,]  38  12      1          8        1   120
#>  [10,]  36   5      1          0        1   115
#>  [11,]  33   6      1          1        1   115
#>  [12,]  38  16      1         10        0   160
#>  [13,]  42   3      1          1        1   130
#>  [14,]  37   1      1          0        1   146
#>  [15,]  42   2      0        180        1   100
#>  [16,]  38   5      1          3        0   125
#>  [17,]  40   6      0        180        1   138
#>  [18,]  40  11      1         10        1   120
#>  [19,]  41   2      1          1        0   166
#>  [20,]  40   1      1          0        1   145
#>  [21,]  43   4      1          0        1   130
#>  [22,]  42  15      1         13        1   125
#>  [23,]  42  12      1         10        1   170
#>  [24,]  43   2      1          1        1   116
#>  [25,]  42   2      0        180        1   124
#>  [26,]  44   5      1          1        0   170
#>  [27,]  44   3      0        180        0   141
#>  [28,]  41  13      1          1        0   140
#>  [29,]  45   9      1          7        0   110
#>  [30,]  45   6      0        180        1   170
#>  [31,]  41   5      1          4        1   141
#>  [32,]  46  15      0        180        0   120
#>  [33,]  46   2      1          1        0   126
#>  [34,]  48  15      0        180        1   160
#>  [35,]  45   3      0        150        0   130
#>  [36,]  46   7      1          2        0   166
#>  [37,]  43  29      0        180        1   180
#>  [38,]  45   4      1          0        0   124
#>  [39,]  46  13      1         10        0   100
#>  [40,]  43   3      1          0        1   124
#>  [41,]  45   8      1          0        1   117
#>  [42,]  49   5      0         73        1   136
#>  [43,]  45   5      0          5        0   141
#>  [44,]  46   6      1          0        1   100
#>  [45,]  44   4      1          0        1   114
#>  [46,]  47   2      0        180        0   108
#>  [47,]  44   9      1          8        1   135
#>  [48,]  45   5      0        180        1   190
#>  [49,]  46   5      1          3        0   130
#>  [50,]  46   4      0        180        1   121
#>  [51,]  44   2      0        180        0   142
#>  [52,]  46  15      0        180        1   120
#>  [53,]  47   3      1          1        1   120
#>  [54,]  48   3      0        180        0   154
#>  [55,]  47   5      1          3        1   130
#>  [56,]  46   3      1          0        1   119
#>  [57,]  47  10      0         10        1   140
#>  [58,]  50   1      1          0        1   129
#>  [59,]  48   2      1          0        0   184
#>  [60,]  47   7      0        180        0   145
#>  [61,]  50   4      1          1        0   125
#>  [62,]  50   6      1          2        1   140
#>  [63,]  46   9      1          9        1   122
#>  [64,]  50   7      0        180        1   110
#>  [65,]  52   2      0        180        1   170
#>  [66,]  50   4      0          4        1   100
#>  [67,]  50   1      1          0        0   150
#>  [68,]  49   7      1          4        1    90
#>  [69,]  47   8      0        180        0   160
#>  [70,]  52   2      0        180        0   155
#>  [71,]  46   3      0        180        1   120
#>  [72,]  46   1      1          1        0   145
#>  [73,]  50   4      1          1        0   150
#>  [74,]  48  17      1         10        0   111
#>  [75,]  47   2      1          1        0   110
#>  [76,]  52   4      1          4        0   152
#>  [77,]  49   9      1          3        0   102
#>  [78,]  49  15      0        180        1   160
#>  [79,]  53   5      0        180        1   140
#>  [80,]  54  17      1         12        1   102
#>  [81,]  53   5      0         77        0   159
#>  [82,]  53   7      1          0        0   199
#>  [83,]  54   6      1          3        0   129
#>  [84,]  50   2      0          5        1   106
#>  [85,]  50  10      1          6        0   122
#>  [86,]  50  14      1         13        0   170
#>  [87,]  53   8      1          7        0   160
#>  [88,]  48   3      1          2        0   150
#>  [89,]  51  25      1          1        0   202
#>  [90,]  49   5      1          2        1   150
#>  [91,]  53   4      0          4        0   140
#>  [92,]  52  14      1          7        1   200
#>  [93,]  53   4      1          0        1   156
#>  [94,]  49  16      0         16        0   125
#>  [95,]  55   3      1          1        0   150
#>  [96,]  52   7      1          2        0   154
#>  [97,]  55   6      1          2        1   114
#>  [98,]  54   9      1          1        0   130
#>  [99,]  52   4      0        180        1   180
#> [100,]  51  13      1         11        0   145
#> [101,]  54   4      1          0        1   121
#> [102,]  50   3      0        174        1   153
#> [103,]  49   1      0          1        1   110
#> [104,]  53   9      0          9        1    95
#> [105,]  50   7      1          0        1   127
#> [106,]  56   4      1          1        1   130
#> [107,]  55   1      0        180        0   127
#> [108,]  55   2      0          2        0   145
#> [109,]  56   3      0        180        1   193
#> [110,]  56   2      0        180        0   132
#> [111,]  53  18      1          9        1   150
#> [112,]  54   3      0        180        1   180
#> [113,]  52  16      0         16        0   152
#> [114,]  53  10      1          9        0   172
#> [115,]  52  16      1         14        0   170
#> [116,]  53  15      0         15        1    90
#> [117,]  53   4      0        180        1   150
#> [118,]  55   6      0        180        1   100
#> [119,]  55   6      1          5        1   138
#> [120,]  55   2      0        134        1   140
#> [121,]  54   3      0        180        0   128
#> [122,]  54   7      1          2        0   129
#> [123,]  52   9      1          3        0   170
#> [124,]  54   2      1          1        1   176
#> [125,]  57   1      0        180        1   156
#> [126,]  57   1      0          1        1   100
#> [127,]  52   2      0        180        0   140
#> [128,]  55  11      1          7        0   104
#> [129,]  52  15      1         14        0   130
#> [130,]  53   3      1          0        1   200
#> [131,]  57  10      0        180        1   170
#> [132,]  58   8      0          8        1   130
#> [133,]  54   5      0        180        1   108
#> [134,]  57   0      0          0        1   150
#> [135,]  53  21      1         13        1   130
#> [136,]  57   4      0        180        1   119
#> [137,]  53  15      1         10        1   130
#> [138,]  55   9      1          2        1   147
#> [139,]  55  13      0        166        1   140
#> [140,]  54  23      1          8        0   120
#> [141,]  57   4      1          2        1   185
#> [142,]  53   4      0        147        1   145
#> [143,]  53   7      1          0        1   120
#> [144,]  55   5      0          5        1   131
#> [145,]  56   4      0          4        0   164
#> [146,]  59  15      1         10        0   140
#> [147,]  58   9      1          0        1   180
#> [148,]  58   1      1          1        1   200
#> [149,]  55   5      1          0        0   140
#> [150,]  60  11      1          9        0   106
#> [151,]  59   3      0        180        0   120
#> [152,]  57   2      0          2        1   120
#> [153,]  60   5      1          1        0   138
#> [154,]  57   5      0        180        1   130
#> [155,]  59   6      1          0        1   140
#> [156,]  59   5      0        180        1   155
#> [157,]  61   9      0          9        1   160
#> [158,]  58   4      1          3        0   120
#> [159,]  60   0      1          0        1    80
#> [160,]  59   2      1          1        0   140
#> [161,]  58   8      0        161        1   140
#> [162,]  58  14      1          6        0   190
#> [163,]  61   4      1          3        0   151
#> [164,]  61   9      1          8        0   150
#> [165,]  58   1      0          1        1   100
#> [166,]  61  20      1         13        0   130
#> [167,]  57  13      1         10        0   110
#> [168,]  57   2      1          0        1   116
#> [169,]  58  10      0         10        1   150
#> [170,]  57   4      1          3        0   138
#> [171,]  61   3      0         17        0   143
#> [172,]  56  14      0         45        0   130
#> [173,]  58  19      1         13        1   140
#> [174,]  55   4      1          3        1   160
#> [175,]  58  11      0        172        1   135
#> [176,]  60  12      1          0        1   114
#> [177,]  55   9      1          7        1   135
#> [178,]  61   4      1          0        1   115
#> [179,]  56   8      1          8        0   120
#> [180,]  61  13      1         12        1   130
#> [181,]  59  11      1          8        1   190
#> [182,]  57   1      0          1        0   126
#> [183,]  57  15      1         13        1   110
#> [184,]  59   5      1          2        0   182
#> [185,]  58   5      1          1        1   135
#> [186,]  61  13      0         13        0   210
#> [187,]  62   7      1          2        1   180
#> [188,]  57   3      1          0        0   100
#> [189,]  61  28      1          7        0   133
#> [190,]  58   8      1          3        1   150
#> [191,]  57   7      0        169        0   180
#> [192,]  61   7      0          7        1   150
#> [193,]  60   7      0          7        0   147
#> [194,]  59  13      1          2        0   198
#> [195,]  57  12      1          9        1   120
#> [196,]  62   4      1          0        0   160
#> [197,]  58   3      1          0        1   146
#> [198,]  62   4      1          3        0   173
#> [199,]  58   2      0         30        0   202
#> [200,]  59   1      0        180        0   155
#> [201,]  59  16      1          9        1   133
#> [202,]  63   6      0         28        1   120
#> [203,]  61   5      0          5        1   110
#> [204,]  57  18      1          9        1    93
#> [205,]  61   5      0          5        1   160
#> [206,]  58  11      1          9        0   179
#> [207,]  57   2      1          1        0   159
#> [208,]  62  17      1         10        1   180
#> [209,]  62   1      1          0        1   172
#> [210,]  58   7      0        180        1   150
#> [211,]  63   3      1          1        0   180
#> [212,]  63   1      0        180        1   130
#> [213,]  61   7      0        180        0   135
#> [214,]  63   4      1          3        0   222
#> [215,]  62   3      0        180        1   105
#> [216,]  63   4      0        180        1   190
#> [217,]  63  15      1         10        1   126
#> [218,]  64   4      0        180        0   130
#> [219,]  63   4      1          1        0   155
#> [220,]  60  18      1         13        0   132
#> [221,]  62   7      0          7        0   150
#> [222,]  59   4      0        180        0   196
#> [223,]  60   7      0          7        0   140
#> [224,]  59   5      1          1        0   148
#> [225,]  60   7      1          1        1    90
#> [226,]  65  13      0        180        1   100
#> [227,]  61  15      1         13        0   170
#> [228,]  59   4      0          4        0   149
#> [229,]  64  10      1          9        0   160
#> [230,]  59  10      0        180        1   130
#> [231,]  61   6      1          1        1   117
#> [232,]  64  12      1         11        0   160
#> [233,]  66   1      1          0        1   120
#> [234,]  64   6      1          0        1   140
#> [235,]  63  10      1          0        1   148
#> [236,]  63  14      1          9        0   123
#> [237,]  65  36      1         11        0   140
#> [238,]  66   3      1          1        0   127
#> [239,]  61  10      1          2        1   194
#> [240,]  64  32      1          9        1   160
#> [241,]  63  12      1          9        0   114
#> [242,]  66   5      1          0        1   110
#> [243,]  65   8      1          0        0   168
#> [244,]  65  10      1          8        1   120
#> [245,]  60   6      0        180        0   130
#> [246,]  64  21      1         10        0   190
#> [247,]  65   3      0        180        1   190
#> [248,]  64   7      0        180        1   120
#> [249,]  63  12      0         12        1   150
#> [250,]  62   3      1          1        1   199
#> [251,]  65   6      0          9        0   112
#> [252,]  65   3      1          0        1    80
#> [253,]  63   5      1          4        0   170
#> [254,]  63   2      1          1        0   180
#> [255,]  67  11      0         11        1   100
#> [256,]  66  16      1         11        1   169
#> [257,]  62   9      0        180        0   145
#> [258,]  61  15      1         10        0   130
#> [259,]  63   9      1          8        1   160
#> [260,]  63   3      1          2        0   120
#> [261,]  64  19      1          8        1   160
#> [262,]  67   6      0        180        1   170
#> [263,]  65  15      1         11        1   160
#> [264,]  64  13      1         12        1   150
#> [265,]  66  13      1          0        0   118
#> [266,]  64   0      0          0        1   148
#> [267,]  67   4      1          3        0   130
#> [268,]  66   3      1          0        1   135
#> [269,]  65   2      1          1        1   170
#> [270,]  67   8      1          1        1   130
#> [271,]  68   5      0          5        1    90
#> [272,]  63  10      0         16        1   160
#> [273,]  66  14      0        180        0   130
#> [274,]  64   1      0          1        1   120
#> [275,]  68  18      0        180        1   260
#> [276,]  65  17      1         14        1   100
#> [277,]  63   8      1          1        1   162
#> [278,]  65  18      1          3        0   120
#> [279,]  63   1      1          0        1   155
#> [280,]  63  10      0         18        1   130
#> [281,]  66  12      1         10        1   150
#> [282,]  66  11      1          0        0   100
#> [283,]  65   4      1          2        1   145
#> [284,]  69  12      0         15        1   140
#> [285,]  63   2      0        180        0   150
#> [286,]  65  11      1          6        0   130
#> [287,]  69  21      1         10        0   180
#> [288,]  63   8      0        180        1   120
#> [289,]  69   1      1          0        0   170
#> [290,]  67   1      0        180        1   160
#> [291,]  67   7      1          4        1   130
#> [292,]  67   2      0        180        0   184
#> [293,]  66  19      1         12        1   150
#> [294,]  67  12      1         12        0   160
#> [295,]  69   6      0         99        1   140
#> [296,]  64   4      0        179        0   160
#> [297,]  66   4      0        180        1   130
#> [298,]  70  15      1         12        1   132
#> [299,]  64   4      0        180        1   140
#> [300,]  67   2      0         18        0   131
#> [301,]  66   7      1          5        1   131
#> [302,]  66   4      0        180        0   177
#> [303,]  65  13      1         12        1   130
#> [304,]  69   8      0         93        0   140
#> [305,]  64  21      0         21        1   155
#> [306,]  66   6      0        180        0   140
#> [307,]  65   1      0          1        1   120
#> [308,]  65   6      0        101        1   115
#> [309,]  71   3      0          5        0   112
#> [310,]  70   7      1          0        1   190
#> [311,]  68   7      0        150        0   210
#> [312,]  67   2      0        180        0   128
#> [313,]  66   9      1          3        1   151
#> [314,]  66   1      1          1        1   165
#> [315,]  70   4      1          0        1   180
#> [316,]  69   8      0        180        1   153
#> [317,]  67   6      1          4        0   130
#> [318,]  68  18      1         14        1   170
#> [319,]  69   0      0          0        1   148
#> [320,]  69   3      1          2        0   151
#> [321,]  67  14      1         13        0   130
#> [322,]  65  14      1         13        1   150
#> [323,]  69   8      0        180        1   180
#> [324,]  71   7      0          7        0   230
#> [325,]  66   2      0          2        1   228
#> [326,]  71   6      0         45        1   158
#> [327,]  69   5      0          5        1   142
#> [328,]  71   3      0        103        0   133
#> [329,]  70  22      1         13        0   103
#> [330,]  67   1      0         36        1   104
#> [331,]  67   5      0          5        0   130
#> [332,]  69   8      1          5        1   195
#> [333,]  69   6      1          4        1   174
#> [334,]  72   7      0          7        1   110
#> [335,]  69   8      1          7        1   108
#> [336,]  67   3      0        180        0   110
#> [337,]  69  11      1          0        1   120
#> [338,]  66   2      0        180        0   130
#> [339,]  67   7      1          4        0   122
#> [340,]  69   4      1          3        0   132
#> [341,]  68   2      0          7        1   130
#> [342,]  69   8      1          2        0   121
#> [343,]  67  13      1          9        0   130
#> [344,]  70   3      0        123        0   130
#> [345,]  67  22      1          1        1   140
#> [346,]  68   3      0         19        0   135
#> [347,]  67  12      1          8        0   120
#> [348,]  67   1      0          1        1    60
#> [349,]  67   4      0         60        1   136
#> [350,]  69   5      0         76        0   120
#> [351,]  67   8      1          0        1   130
#> [352,]  72  13      1         11        1   195
#> [353,]  68  10      1          8        1   160
#> [354,]  66  24      1         13        0   130
#> [355,]  70  35      1          0        1   105
#> [356,]  70   7      0          7        0   102
#> [357,]  73  20      1          0        1   170
#> [358,]  69  10      1          6        1   120
#> [359,]  72  19      1          8        0   120
#> [360,]  72  12      1         10        0   170
#> [361,]  67   8      0        180        1   170
#> [362,]  67   9      0        180        0   158
#> [363,]  70   5      0        180        0   150
#> [364,]  72   6      1          5        0   115
#> [365,]  71   1      0        173        1   188
#> [366,]  69   3      0        180        0   220
#> [367,]  71   3      1          2        0   150
#> [368,]  72   5      0         28        0   120
#> [369,]  71   5      0        180        0   191
#> [370,]  73   6      0        180        1   117
#> [371,]  69  16      1         10        1   140
#> [372,]  69   8      1          1        0   164
#> [373,]  68   7      0        180        1   130
#> [374,]  72  16      1          1        1   130
#> [375,]  73   6      1          0        1   270
#> [376,]  72   8      1          1        1   150
#> [377,]  71   2      1          0        1   180
#> [378,]  73   7      0          7        1   140
#> [379,]  68  15      1         13        1   130
#> [380,]  70   3      0          3        1   159
#> [381,]  70  13      1          9        0   100
#> [382,]  72   6      0        180        1   130
#> [383,]  73   0      0        180        1   161
#> [384,]  74   8      1          0        1    85
#> [385,]  69   2      1          0        1   110
#> [386,]  71   3      1          1        0   150
#> [387,]  74  20      0         20        1   180
#> [388,]  68   9      0        180        1   120
#> [389,]  71  20      1         10        0   140
#> [390,]  74   0      1          0        1    90
#> [391,]  73   3      1          0        1   136
#> [392,]  71  17      1         11        0   160
#> [393,]  71   8      1          7        0   149
#> [394,]  71   3      1          2        1   190
#> [395,]  73  10      1          8        0   106
#> [396,]  69  12      1          1        1   149
#> [397,]  74   4      0          4        0   120
#> [398,]  73   4      0         58        1   160
#> [399,]  72   5      1          3        1   160
#> [400,]  73   6      0        180        0   110
#> [401,]  72  15      1          0        1   150
#> [402,]  72   8      1          0        1   140
#> [403,]  74   3      0          3        1   150
#> [404,]  71  13      1          8        0   121
#> [405,]  69   2      1          1        1    80
#> [406,]  70   4      1          0        1   140
#> [407,]  69   7      0        180        1   144
#> [408,]  72  15      1         13        0   156
#> [409,]  70   8      0          8        0   120
#> [410,]  71  10      1          9        1   120
#> [411,]  75   1      0          1        0   133
#> [412,]  75   2      1          1        0   145
#> [413,]  73  10      1          9        1   146
#> [414,]  72  10      1          9        1   160
#> [415,]  71   2      0         10        1   112
#> [416,]  73   1      0          1        1    80
#> [417,]  75  13      1          1        1   130
#> [418,]  71  11      1          8        0   110
#> [419,]  71   4      0          4        0   134
#> [420,]  72  15      1         12        1   120
#> [421,]  73  10      1          8        0   120
#> [422,]  70   7      1          4        0   184
#> [423,]  72   1      1          1        0   168
#> [424,]  72  11      0         11        1   140
#> [425,]  70   3      0          3        0   150
#> [426,]  73   5      1          3        1   112
#> [427,]  76  25      1         12        1   170
#> [428,]  73  12      1         12        1   140
#> [429,]  75   1      0        180        1   140
#> [430,]  72   4      1          0        1   197
#> [431,]  76   3      1          0        1   120
#> [432,]  71  32      1         12        1   107
#> [433,]  72   5      0        180        0   154
#> [434,]  77   4      0          4        0   185
#> [435,]  73  15      0         15        1   160
#> [436,]  71  16      0        180        0   140
#> [437,]  74   3      0          3        1   128
#> [438,]  74   2      1          1        0   140
#> [439,]  74  19      1          4        1   200
#> [440,]  73   6      0          6        1   114
#> [441,]  75  23      1         14        1   110
#> [442,]  74   2      0        180        0   190
#> [443,]  72   4      0         85        1   120
#> [444,]  76  13      1         10        0   110
#> [445,]  75   4      1          0        1   122
#> [446,]  75   7      0          7        0   190
#> [447,]  75   0      0          0        1   130
#> [448,]  73  13      1         11        0   195
#> [449,]  75  12      0         12        1   160
#> [450,]  74   8      1          0        1   105
#> [451,]  74   6      0        180        0   160
#> [452,]  76   4      0          4        1   155
#> [453,]  75   1      0          1        1   125
#> [454,]  74   2      0        180        0   111
#> [455,]  73   0      0        180        0   156
#> [456,]  72   5      0        180        0   120
#> [457,]  78  12      1         11        1   160
#> [458,]  76   5      0        180        0   185
#> [459,]  74  10      1          0        1   135
#> [460,]  76   5      1          0        1   167
#> [461,]  74   8      1          8        1   170
#> [462,]  75   9      0        180        1   140
#> [463,]  73  33      1         12        1   175
#> [464,]  73  10      1          9        0   146
#> [465,]  77  12      0        180        0   130
#> [466,]  77   1      1          0        1    90
#> [467,]  76  12      1         11        1   120
#> [468,]  78   5      1          0        1   170
#> [469,]  73   7      1          0        0   174
#> [470,]  75   3      1          1        1   171
#> [471,]  74   9      1          8        0   200
#> [472,]  79  10      1          8        0   190
#> [473,]  74   2      1          0        1   130
#> [474,]  78  18      0         18        1   144
#> [475,]  77   3      0        180        0   110
#> [476,]  76  29      0         47        0    90
#> [477,]  73   8      1          1        1   162
#> [478,]  73  11      1          2        1   110
#> [479,]  78   7      0          7        1   133
#> [480,]  74   7      0          7        0   161
#> [481,]  76  13      1          1        1   170
#> [482,]  79   6      0        180        0   170
#> [483,]  80  10      1          6        1   147
#> [484,]  78   0      0        180        1   212
#> [485,]  78  13      1          5        0   130
#> [486,]  79   4      0         80        0   145
#> [487,]  75   4      1          0        0   212
#> [488,]  78  10      0        180        1   130
#> [489,]  76  11      1          0        0   120
#> [490,]  76   7      0         29        1   150
#> [491,]  77  24      0         24        1   160
#> [492,]  79   8      0         32        1   120
#> [493,]  80   9      0         23        1   128
#> [494,]  80   6      0          6        1   150
#> [495,]  78   6      1          0        1   240
#> [496,]  76   3      1          0        1   140
#> [497,]  81   1      0          1        0   130
#> [498,]  78  11      1          8        1   118
#> [499,]  76   4      0          4        1   160
#> [500,]  79   4      0          4        1   125
#> [501,]  80   3      1          0        1   120
#> [502,]  75   2      1          1        1   204
#> [503,]  78  11      0        180        1   135
#> [504,]  76   1      0          1        1   140
#> [505,]  76   1      0          1        1    90
#> [506,]  78   7      1          0        1   110
#> [507,]  79   3      0          3        0   120
#> [508,]  77   7      0        180        1   170
#> [509,]  77   6      0          6        1   144
#> [510,]  79   4      1          0        1   120
#> [511,]  80  15      1         12        1   150
#> [512,]  77   9      1          4        0   141
#> [513,]  82   5      0          8        1   120
#> [514,]  78   4      0         59        1   112
#> [515,]  80  17      1         12        0   100
#> [516,]  76   7      0        161        0   151
#> [517,]  79  10      0         10        1   120
#> [518,]  80  15      1          0        1    90
#> [519,]  81   4      1          2        1   126
#> [520,]  80   6      0        173        1   160
#> [521,]  79   1      0         37        1   140
#> [522,]  81   3      0        180        0   184
#> [523,]  81   2      0        175        0   172
#> [524,]  78   7      0          7        1   147
#> [525,]  77  13      1          0        1   190
#> [526,]  78  15      0         15        0   165
#> [527,]  80   5      1          1        1   108
#> [528,]  78   4      0        180        0   175
#> [529,]  78  26      1          5        0   194
#> [530,]  81   4      1          1        1   104
#> [531,]  78  20      1          0        1   109
#> [532,]  78   3      1          1        1   152
#> [533,]  77  10      1          8        1   130
#> [534,]  82   3      1          1        1   144
#> [535,]  77   5      0         85        0   188
#> [536,]  80   2      1          1        0   168
#> [537,]  79   6      0          6        0   152
#> [538,]  80   5      0          5        1   130
#> [539,]  79  10      0        180        1   150
#> [540,]  77   4      0        180        1    98
#> [541,]  78  12      0        180        0   134
#> [542,]  79   1      0        125        0   193
#> [543,]  79   4      0          4        1   121
#> [544,]  80   6      0          6        1   110
#> [545,]  83   9      1          5        1   170
#> [546,]  79   7      1          6        0   130
#> [547,]  83   4      0        103        0    97
#> [548,]  81  11      1          8        0   160
#> [549,]  81   5      0        177        0    41
#> [550,]  80  11      1          8        0   170
#> [551,]  78  23      1         10        1   145
#> [552,]  79   4      0          4        1   183
#> [553,]  82   8      1          1        0   128
#> [554,]  79   1      0        180        1   170
#> [555,]  81  15      0        180        1   140
#> [556,]  80   7      1          0        1   146
#> [557,]  84   5      1          1        1    85
#> [558,]  83   8      0          8        0   115
#> [559,]  81  16      0         16        1   110
#> [560,]  80   6      1          0        1   150
#> [561,]  80  11      1          8        0   110
#> [562,]  81   8      0        180        0   146
#> [563,]  80   8      1          7        0   160
#> [564,]  79   7      0        177        0   197
#> [565,]  79   0      1          0        1    96
#> [566,]  83   2      0          2        1   155
#> [567,]  82   6      0        128        1   100
#> [568,]  84   4      0        167        0   198
#> [569,]  82  23      1          0        0   110
#> [570,]  84   5      0        180        1   203
#> [571,]  84   4      0          4        1    85
#> [572,]  81   1      0          1        1   150
#> [573,]  81   4      0         90        1   138
#> [574,]  85   3      1          2        1   160
#> [575,]  84   4      0         89        1   129
#> [576,]  79   4      0          4        1    60
#> [577,]  80   6      0         71        1   189
#> [578,]  83   1      0          1        1   100
#> [579,]  82  19      0         19        0   120
#> [580,]  80  30      1         13        0   220
#> [581,]  79  14      1          0        0   110
#> [582,]  81  14      1         12        1   128
#> [583,]  85   9      1          6        1   160
#> [584,]  83   1      0        180        0   160
#> [585,]  81   4      0          4        0   175
#> [586,]  84  15      1         13        1   110
#> [587,]  81   1      0          1        1   145
#> [588,]  81   4      0          4        0   160
#> [589,]  86  12      0        180        1   120
#> [590,]  82   3      1          2        0   130
#> [591,]  80   2      0         88        0   135
#> [592,]  83   7      0        126        0   135
#> [593,]  86   8      0          8        1   132
#> [594,]  81  16      1          9        0   180
#> [595,]  82   9      0        180        1   134
#> [596,]  84   3      0        180        1   120
#> [597,]  81  13      0        180        0   152
#> [598,]  85   3      0          3        1   118
#> [599,]  83   9      0        180        1   149
#> [600,]  82   1      0        180        1   193
#> [601,]  87   2      0          5        1   137
#> [602,]  82  14      1         11        1   103
#> [603,]  84  16      0         70        1   150
#> [604,]  83  19      0         43        0   150
#> [605,]  83  10      1          0        1   190
#> [606,]  88  14      1          3        1   130
#> [607,]  84   3      0          3        1   121
#> [608,]  83  13      1         12        0   170
#> [609,]  84   7      1          2        0   148
#> [610,]  84   9      0         92        1   110
#> [611,]  84   3      0        180        1   170
#> [612,]  86   4      0         38        1   122
#> [613,]  82   4      0          4        0   130
#> [614,]  86  13      0        177        0   163
#> [615,]  86   6      0          6        1   117
#> [616,]  86   6      1          1        0   112
#> [617,]  83  20      1          3        1   150
#> [618,]  88   4      0          4        1   115
#> [619,]  85  22      0         22        1   184
#> [620,]  83   9      0         65        1   150
#> [621,]  87   2      0        180        1   130
#> [622,]  86   6      0         46        0   173
#> [623,]  88   3      0        115        0   110
#> [624,]  83   3      0          3        1   130
#> [625,]  87   8      0          8        1   157
#> [626,]  86  15      1          8        1   109
#> [627,]  88   4      0          4        0    86
#> [628,]  89   4      0          4        1   153
#> [629,]  89   5      0        119        1   140
#> [630,]  87   6      0        180        1   110
#> [631,]  87   1      0          1        0   170
#> [632,]  84   8      0        180        1   119
#> [633,]  89  10      0         46        1   170
#> [634,]  87   2      0        180        0   160
#> [635,]  86   3      1          0        1    80
#> [636,]  88   7      0         24        0   119
#> [637,]  87   6      0        126        1   168
#> [638,]  86  10      0        180        1   137
#> [639,]  90   4      1          0        0   121
#> [640,]  87  43      0        178        1   130
#> [641,]  87   5      0         36        1   150
#> [642,]  90   5      1          0        1   125
#> [643,]  88   3      1          2        0   159
#> [644,]  89   3      1          1        1   160
#> [645,]  92   1      0          1        1   167
#> [646,]  91   3      0         33        1   137
#> [647,]  87   7      0         74        1   105
#> [648,]  89   2      0        168        0   118
#> [649,]  91   5      0        169        1   176
#> [650,]  89  52      0         52        1   130
#> [651,]  92   7      0          7        1   110
#> [652,]  91   0      0          0        0     0
#> [653,]  89  14      0        180        1    84
#> [654,]  90  18      0        180        0   188
#> [655,]  91   4      1          0        1   120
#> [656,]  90  19      1         11        1   129
#> [657,]  94   6      0         50        0    78
#> [658,]  90   1      0          1        1   118
#> [659,]  94   8      0          8        1   142
#> [660,]  92   4      0         76        1   149
#> [661,]  91   1      0        180        0   158
#> [662,]  90  16      0         16        1   106
#> [663,]  90   3      0         67        0   162
#> [664,]  95   8      1          5        1   150
#> [665,]  91   7      0          7        0   135
#> [666,]  93   0      1          0        1   122
#> [667,]  92   5      0         69        0   139
#> [668,]  92   2      0          2        0   112
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+ 180.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+  12.0    5.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31]   5.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+  73.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+  88.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81]  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91]   4.0+  85.0  166.0+  16.0+ 180.0+   7.0+   6.0+ 180.0+ 180.0+  13.0+
#> [101] 180.0+ 174.0+   1.0    9.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+
#> [111] 180.0+ 180.0+  16.0+ 180.0+  16.0   15.0+ 180.0+ 180.0+ 180.0+ 134.0+
#> [121] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+
#> [131] 180.0+   8.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+  15.0  166.0+ 180.0+
#> [141]   4.0+ 147.0+ 180.0+   5.0+   4.0+ 180.0+   9.0+   1.0  180.0+ 180.0+
#> [151] 180.0+   2.0  180.0+ 180.0+  64.0  180.0+   9.0+ 180.0+   0.5  180.0+
#> [161] 161.0+ 171.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+  10.0+ 180.0+
#> [171]  17.0   45.0   19.0  180.0+ 172.0+ 172.0+  24.0  180.0+   8.0  180.0+
#> [181] 180.0+   1.0+  15.0  180.0+ 180.0+  13.0+ 180.0+ 180.0+  94.0  180.0+
#> [191] 169.0    7.0    7.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+  30.0  180.0+
#> [201] 180.0+  28.0    5.0   18.0    5.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [221]   7.0+ 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 167.0  180.0+
#> [231] 180.0+  12.0  180.0+ 180.0+ 180.0+  14.0+  36.0    3.0+  88.0  180.0+
#> [241]  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+
#> [251]   9.0    3.0  180.0+ 180.0+  11.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+
#> [261] 103.0  180.0+ 180.0+  13.0  166.0+   0.5+ 180.0+   3.0+ 175.0+   8.0 
#> [271]   5.0   16.0  180.0+   1.0  180.0+ 180.0+ 180.0+ 123.0+   1.0+  18.0 
#> [281]  80.0  180.0+   4.0+  15.0  180.0+ 180.0+ 174.0+ 180.0+ 175.0  180.0+
#> [291] 180.0+ 180.0+  19.0+  12.0   99.0  179.0+ 180.0+ 180.0+ 180.0+  18.0 
#> [301]   7.0+ 180.0+ 180.0+  93.0   21.0+ 180.0+   1.0  101.0    5.0    7.0+
#> [311] 150.0  180.0+ 180.0+   1.0  180.0+ 180.0+   6.0  180.0+   0.5  180.0+
#> [321] 180.0+  14.0+ 180.0+   7.0+   2.0   45.0    5.0+ 103.0  180.0+  36.0 
#> [331]   5.0+ 180.0+  97.0    7.0    8.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+
#> [341]   7.0    8.0+  13.0+ 123.0   51.0   19.0  180.0+   1.0   60.0   76.0 
#> [351] 180.0+ 132.0   10.0+ 180.0+ 180.0+   7.0+ 124.0  180.0+ 180.0+  12.0 
#> [361] 180.0+ 180.0+ 180.0+ 180.0+ 173.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+
#> [371]  16.0+ 180.0+ 180.0+  16.0+   6.0  180.0+ 180.0+   7.0+  15.0    3.0+
#> [381]  13.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+  20.0  180.0+  20.0    0.5 
#> [391] 180.0+ 180.0+   8.0    3.0   87.0   12.0    4.0+  58.0  180.0+ 180.0+
#> [401] 180.0+ 180.0+   3.0  175.0    2.0  180.0+ 180.0+ 180.0+   8.0+ 179.0+
#> [411]   1.0  180.0+ 180.0+ 159.0   10.0    1.0   13.0  180.0+   4.0+ 180.0+
#> [421]  10.0  104.0+   1.0   11.0    3.0+   5.0  180.0+  12.0  180.0+ 180.0+
#> [431] 180.0+ 177.0+ 180.0+   4.0+  15.0+ 180.0+   3.0  180.0+ 180.0+   6.0 
#> [441] 180.0+ 180.0+  85.0  174.0+   4.0    7.0    0.5  180.0+  12.0  180.0+
#> [451] 180.0+   4.0    1.0  180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+
#> [461]   8.0  180.0+  33.0  180.0+ 180.0+   1.0   12.0  180.0+   7.0+   3.0 
#> [471] 168.0+ 180.0+ 176.0+  18.0  180.0+  47.0  180.0+  11.0    7.0    7.0 
#> [481] 180.0+ 180.0+  10.0  180.0+ 172.0   80.0    4.0+ 180.0+  11.0   29.0 
#> [491]  24.0   32.0   23.0    6.0  180.0+   3.0+   1.0   11.0    4.0    4.0 
#> [501]   3.0+   2.0+ 180.0+   1.0    1.0   43.0    3.0  180.0+   6.0  138.0 
#> [511] 180.0+  71.0    8.0   59.0   17.0  161.0   10.0+ 180.0+  93.0  173.0 
#> [521]  37.0  180.0+ 175.0+   7.0+  22.0   15.0+   5.0+ 180.0+ 171.0+  71.0 
#> [531]  20.0+   3.0+  10.0  180.0+  85.0   10.0    6.0+   5.0  180.0+ 180.0+
#> [541] 180.0+ 125.0    4.0    6.0    9.0+ 180.0+ 103.0  180.0+ 177.0+ 169.0 
#> [551]  70.0    4.0  180.0+ 180.0+ 180.0+   7.0+ 180.0+   8.0+  16.0  180.0+
#> [561] 180.0+ 180.0+ 180.0+ 177.0+   0.5    2.0  128.0  167.0   62.0  180.0+
#> [571]   4.0    1.0   90.0  180.0+  89.0    4.0   71.0    1.0   19.0   30.0 
#> [581] 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+   1.0    4.0+ 180.0+   3.0 
#> [591]  88.0  126.0    8.0  180.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+
#> [601]   5.0  174.0   70.0   43.0  180.0+  14.0    3.0   13.0  180.0+  92.0 
#> [611] 180.0+  38.0    4.0  177.0    6.0+   6.0+  20.0    4.0   22.0   65.0 
#> [621] 180.0+  46.0  115.0    3.0+   8.0+ 180.0+   4.0    4.0  119.0  180.0+
#> [631]   1.0+ 180.0+  46.0  180.0+   3.0   24.0  126.0  180.0+   4.0  178.0+
#> [641]  36.0   89.0   75.0    3.0+   1.0   33.0   74.0  168.0  169.0   52.0 
#> [651]   7.0    0.5  180.0+ 180.0+   4.0  180.0+  50.0    1.0+   8.0+  76.0 
#> [661] 180.0+  16.0   67.0    8.0    7.0+   0.5   69.0    2.0    3.0   15.0+
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
#>   0.8331994 
```
