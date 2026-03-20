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
#> min 0.00322    44   2.877 0.1373       6
#> 1se 0.06325    12   2.999 0.1483       5
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   5      1          2        0   172
#>   [5,]  35  10      1          9        0   106
#>   [6,]  35   2      0        180        0   121
#>   [7,]  35   2      1          1        1   112
#>   [8,]  38  13      1          0        1   161
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  38  12      1          8        1   120
#>  [12,]  36   5      1          0        1   115
#>  [13,]  33   6      1          1        1   115
#>  [14,]  40  12      1          9        0   153
#>  [15,]  42   3      1          1        1   130
#>  [16,]  40   2      1          1        1   148
#>  [17,]  42   2      0        180        1   100
#>  [18,]  42   2      0          2        0   140
#>  [19,]  40  11      1         10        1   120
#>  [20,]  42   2      0        180        0   100
#>  [21,]  41   2      1          1        0   166
#>  [22,]  40   1      1          0        1   145
#>  [23,]  42   4      0        180        0   162
#>  [24,]  43   2      1          1        1   116
#>  [25,]  42   2      0        180        1   124
#>  [26,]  41  10      1          8        0   150
#>  [27,]  41  13      1          1        0   140
#>  [28,]  45   9      1          7        0   110
#>  [29,]  45   6      0        180        1   170
#>  [30,]  46   2      1          1        0   126
#>  [31,]  45   3      0        150        0   130
#>  [32,]  44   3      1          0        1   180
#>  [33,]  43  29      0        180        1   180
#>  [34,]  45   4      1          0        0   124
#>  [35,]  43  10      0        180        0   185
#>  [36,]  47   4      1          3        1   160
#>  [37,]  43   3      1          0        1   124
#>  [38,]  45   8      1          0        1   117
#>  [39,]  49   5      0         73        1   136
#>  [40,]  45   5      0          5        0   141
#>  [41,]  46   2      1          1        1   122
#>  [42,]  46   6      1          0        1   100
#>  [43,]  44   4      1          0        1   114
#>  [44,]  47   2      0        180        0   108
#>  [45,]  46   5      1          3        0   130
#>  [46,]  46   4      0        180        1   121
#>  [47,]  44   2      0        180        0   142
#>  [48,]  46  15      0        180        1   120
#>  [49,]  45   9      1          0        1   145
#>  [50,]  47   3      1          1        1   120
#>  [51,]  47   5      1          3        1   130
#>  [52,]  47   9      1          6        0   170
#>  [53,]  49   4      0        180        0   117
#>  [54,]  47  10      0         10        1   140
#>  [55,]  50   1      1          0        1   129
#>  [56,]  48   2      1          0        0   184
#>  [57,]  50   6      1          2        1   140
#>  [58,]  49   7      1          7        1   110
#>  [59,]  46   3      1          1        1   140
#>  [60,]  46   9      1          9        1   122
#>  [61,]  49   2      0          2        0   105
#>  [62,]  51   1      0          1        1   145
#>  [63,]  49  15      1         11        1   160
#>  [64,]  47   2      0        180        0   150
#>  [65,]  49  23      0        179        1   112
#>  [66,]  52   2      0        180        1   170
#>  [67,]  50   7      1          0        1    92
#>  [68,]  50   9      0        180        0   130
#>  [69,]  49   7      1          4        1    90
#>  [70,]  51   8      0        180        1   140
#>  [71,]  52   2      0        180        0   155
#>  [72,]  46   3      0        180        1   120
#>  [73,]  46   1      1          1        0   145
#>  [74,]  50   4      1          1        0   150
#>  [75,]  48   7      1          0        1   110
#>  [76,]  53   8      0         36        1   160
#>  [77,]  48  17      1         10        0   111
#>  [78,]  47   2      1          1        0   110
#>  [79,]  49   9      1          3        0   102
#>  [80,]  53   5      0        180        1   140
#>  [81,]  53   5      0         77        0   159
#>  [82,]  53   7      1          0        0   199
#>  [83,]  50   2      0          5        1   106
#>  [84,]  50  10      1          6        0   122
#>  [85,]  53   8      1          7        0   160
#>  [86,]  51  25      1          1        0   202
#>  [87,]  49   5      1          2        1   150
#>  [88,]  53   4      0          4        0   140
#>  [89,]  48   6      0        180        0   160
#>  [90,]  48  11      1         10        0   120
#>  [91,]  53   4      1          0        1   156
#>  [92,]  51  13      0         99        1   160
#>  [93,]  54   9      1          0        1   138
#>  [94,]  49  16      0         16        0   125
#>  [95,]  54  23      1         10        0   131
#>  [96,]  55   6      1          2        1   114
#>  [97,]  55   4      1          2        0   150
#>  [98,]  52   4      0        180        1   180
#>  [99,]  51  13      1         11        0   145
#> [100,]  52   4      0        180        0   183
#> [101,]  50   3      0        174        1   153
#> [102,]  49   6      1          0        1   130
#> [103,]  49   1      0          1        1   110
#> [104,]  53   9      0          9        1    95
#> [105,]  53   8      1          0        1   130
#> [106,]  55   1      0        180        0   127
#> [107,]  54   1      0        180        0   162
#> [108,]  54   7      1          0        1   100
#> [109,]  56   3      0        180        1   193
#> [110,]  56   2      0        180        0   132
#> [111,]  55   5      1          4        1   120
#> [112,]  53  18      1          9        1   150
#> [113,]  54   3      0        180        1   180
#> [114,]  52  16      0         16        0   152
#> [115,]  53  10      1          9        0   172
#> [116,]  53  15      0         15        1    90
#> [117,]  53   4      0        180        1   150
#> [118,]  55   6      0        180        1   100
#> [119,]  55   6      1          5        1   138
#> [120,]  55   2      0        134        1   140
#> [121,]  54   3      0        180        0   128
#> [122,]  56   3      0          8        1   139
#> [123,]  57   3      0          3        0   120
#> [124,]  54   7      1          2        0   129
#> [125,]  54   2      1          1        0   135
#> [126,]  52   9      1          3        0   170
#> [127,]  57   5      1          3        1   138
#> [128,]  57   1      0          1        1   100
#> [129,]  52   2      0        180        0   140
#> [130,]  55  11      1          7        0   104
#> [131,]  52  15      1         14        0   130
#> [132,]  56  14      1         11        0   130
#> [133,]  53   3      1          0        1   200
#> [134,]  57  10      0        180        1   170
#> [135,]  57   0      0          0        1   150
#> [136,]  53  21      1         13        1   130
#> [137,]  59   3      1          1        0   172
#> [138,]  57   4      0        180        1   119
#> [139,]  53  15      1         10        1   130
#> [140,]  56   5      0          5        1   150
#> [141,]  54  23      1          8        0   120
#> [142,]  57   4      1          2        1   185
#> [143,]  53   4      0        147        1   145
#> [144,]  55   3      1          2        0   140
#> [145,]  54   7      1          0        1   141
#> [146,]  56   4      0          4        0   164
#> [147,]  59  15      1         10        0   140
#> [148,]  58   9      1          0        1   180
#> [149,]  58   1      1          1        1   200
#> [150,]  56   7      1          5        1   120
#> [151,]  55   2      0          2        0   106
#> [152,]  57   1      0        180        0   148
#> [153,]  60  11      1          9        0   106
#> [154,]  59   3      0        180        0   120
#> [155,]  58   4      1          0        1   160
#> [156,]  57   2      0          2        1   120
#> [157,]  57   5      0        180        1   130
#> [158,]  55   5      1          0        1   160
#> [159,]  59   6      1          0        1   140
#> [160,]  59   5      0        180        1   155
#> [161,]  59   4      1          0        1   152
#> [162,]  58   4      1          3        0   120
#> [163,]  58  14      1          6        0   190
#> [164,]  61   9      1          8        0   150
#> [165,]  61   3      1          2        1   102
#> [166,]  58   1      0          1        1   100
#> [167,]  61  20      1         13        0   130
#> [168,]  57  13      1         10        0   110
#> [169,]  56  14      0         45        0   130
#> [170,]  57   3      1          2        0   120
#> [171,]  58  19      1         13        1   140
#> [172,]  59   9      1          0        1    80
#> [173,]  60  12      1          0        1   114
#> [174,]  55   9      1          7        1   135
#> [175,]  61   4      1          0        1   115
#> [176,]  56   8      1          8        0   120
#> [177,]  61  13      1         12        1   130
#> [178,]  59  11      1          8        1   190
#> [179,]  57  15      1         13        1   110
#> [180,]  59   5      1          2        0   182
#> [181,]  61  13      0         13        0   210
#> [182,]  58   8      1          5        0   152
#> [183,]  62  10      1          0        1   153
#> [184,]  62   7      1          2        1   180
#> [185,]  61  18      0        170        0   140
#> [186,]  58   8      1          3        1   150
#> [187,]  57   7      0        169        0   180
#> [188,]  61   7      0          7        1   150
#> [189,]  61   6      0          6        0   134
#> [190,]  59  13      1          2        0   198
#> [191,]  57  12      1          9        1   120
#> [192,]  62   4      1          0        0   160
#> [193,]  60  17      1          8        1   140
#> [194,]  58   2      0         30        0   202
#> [195,]  59   1      0        180        0   155
#> [196,]  59  16      1          9        1   133
#> [197,]  63   6      0         28        1   120
#> [198,]  61   5      0          5        1   110
#> [199,]  57  18      1          9        1    93
#> [200,]  61   5      0          5        1   160
#> [201,]  58  11      1          9        0   179
#> [202,]  62  17      1         10        1   180
#> [203,]  62   1      1          0        1   172
#> [204,]  58   7      0        180        1   150
#> [205,]  63   4      1          3        0   222
#> [206,]  62   3      0        180        1   105
#> [207,]  63   4      0        180        1   190
#> [208,]  63  15      1         10        1   126
#> [209,]  64   4      0        180        0   130
#> [210,]  63   4      1          1        0   155
#> [211,]  60  18      1         13        0   132
#> [212,]  61   9      1          9        1   150
#> [213,]  62   7      0          7        0   150
#> [214,]  59   1      0         22        1   162
#> [215,]  59   4      0        180        0   196
#> [216,]  60   7      1          5        1   141
#> [217,]  60   7      0          7        0   140
#> [218,]  59   5      1          1        0   148
#> [219,]  65  13      0        180        1   100
#> [220,]  63   1      0          1        0   162
#> [221,]  62   6      0        180        0   170
#> [222,]  61  15      1         13        0   170
#> [223,]  60   3      0          3        0   168
#> [224,]  64  10      1          9        0   160
#> [225,]  62   6      0          6        0   120
#> [226,]  63  12      1         10        0   200
#> [227,]  60   8      0         17        1   130
#> [228,]  61   6      1          1        1   117
#> [229,]  64  12      1         11        0   160
#> [230,]  66   1      1          0        1   120
#> [231,]  64   6      1          0        1   140
#> [232,]  63  10      1          0        1   148
#> [233,]  65  36      1         11        0   140
#> [234,]  63   4      1          3        0   162
#> [235,]  61  10      1          2        1   194
#> [236,]  64  32      1          9        1   160
#> [237,]  63   7      0        180        0   120
#> [238,]  65   8      1          0        0   168
#> [239,]  64   0      0          0        1    90
#> [240,]  64  21      1         10        0   190
#> [241,]  61  12      1         11        0   154
#> [242,]  61   4      0        180        1   113
#> [243,]  65   3      0        180        1   190
#> [244,]  63  16      1          7        1   110
#> [245,]  64   7      0        180        1   120
#> [246,]  66   6      1          1        1   130
#> [247,]  63  12      0         12        1   150
#> [248,]  65   3      1          0        1    80
#> [249,]  63   5      1          4        0   170
#> [250,]  67  11      0         11        1   100
#> [251,]  64   2      0          2        0   201
#> [252,]  66  18      1          5        0   142
#> [253,]  66  16      1         11        1   169
#> [254,]  61  14      1          5        0   140
#> [255,]  63   3      1          2        0   120
#> [256,]  63   2      1          0        0   140
#> [257,]  64  19      1          8        1   160
#> [258,]  65   8      1          0        1   140
#> [259,]  68   5      1          4        1   150
#> [260,]  64   0      0          0        1   148
#> [261,]  67   4      1          3        0   130
#> [262,]  66   3      1          0        1   135
#> [263,]  66   6      1          0        1   140
#> [264,]  65   2      1          1        1   170
#> [265,]  68   1      0        180        1   166
#> [266,]  67   8      1          1        1   130
#> [267,]  68   5      0          5        1    90
#> [268,]  63  10      0         16        1   160
#> [269,]  66  14      0        180        0   130
#> [270,]  64   1      0          1        1   120
#> [271,]  63   8      1          1        1   162
#> [272,]  65  18      1          3        0   120
#> [273,]  63  10      0         18        1   130
#> [274,]  67  11      0         11        0   150
#> [275,]  68  11      0        180        0   160
#> [276,]  68  14      0         79        0   172
#> [277,]  65  15      1         12        1   150
#> [278,]  66  11      1          0        0   100
#> [279,]  65   4      1          2        1   145
#> [280,]  69  12      0         15        1   140
#> [281,]  66   9      1          8        0   130
#> [282,]  63   8      0        180        1   120
#> [283,]  68  14      1         13        1   140
#> [284,]  65   8      1          0        1    90
#> [285,]  67   1      0        180        1   160
#> [286,]  65   1      1          0        0   133
#> [287,]  67   7      1          4        1   130
#> [288,]  67   2      0        180        0   184
#> [289,]  65   6      0          6        0    80
#> [290,]  66  19      1         12        1   150
#> [291,]  67  12      1         12        0   160
#> [292,]  69   6      0         99        1   140
#> [293,]  65   4      1          1        0   130
#> [294,]  66   4      0        180        1   130
#> [295,]  70  15      1         12        1   132
#> [296,]  64   4      0        180        1   140
#> [297,]  64   0      1          0        1   118
#> [298,]  67   2      0         18        0   131
#> [299,]  68   4      1          0        1   160
#> [300,]  69  17      1         10        0   140
#> [301,]  69   8      0         93        0   140
#> [302,]  64  21      0         21        1   155
#> [303,]  66   6      0        180        0   140
#> [304,]  65   1      0          1        1   120
#> [305,]  68  18      1          0        1   160
#> [306,]  65   6      0        101        1   115
#> [307,]  68   4      0          4        1   190
#> [308,]  68   7      0        150        0   210
#> [309,]  66   9      1          3        1   151
#> [310,]  66   1      1          1        1   165
#> [311,]  70   4      1          0        1   180
#> [312,]  69   8      0        180        1   153
#> [313,]  70  14      0        171        0   166
#> [314,]  66   4      0        180        0   130
#> [315,]  67   6      1          4        0   130
#> [316,]  68  18      1         14        1   170
#> [317,]  65   2      0        180        0   130
#> [318,]  68   7      1          0        1   150
#> [319,]  69   8      0        180        1   180
#> [320,]  71   7      0          7        0   230
#> [321,]  71   6      0         45        1   158
#> [322,]  69   5      0          5        1   142
#> [323,]  69   3      0          3        1   130
#> [324,]  70  22      1         13        0   103
#> [325,]  67   1      0         36        1   104
#> [326,]  67   5      0          5        0   130
#> [327,]  68   6      0        180        0   145
#> [328,]  69   8      1          5        1   195
#> [329,]  69   6      1          4        1   174
#> [330,]  72   3      1          0        1   132
#> [331,]  69   8      1          7        1   108
#> [332,]  69  19      0        180        0   130
#> [333,]  69  11      1          0        1   120
#> [334,]  69   4      1          3        0   132
#> [335,]  68   2      0          7        1   130
#> [336,]  67  13      1          9        0   130
#> [337,]  70   9      0        180        1   142
#> [338,]  67  22      1          1        1   140
#> [339,]  67  12      1          8        0   120
#> [340,]  69   1      0          1        1   110
#> [341,]  67   4      0         60        1   136
#> [342,]  69   5      0         76        0   120
#> [343,]  67   8      1          0        1   130
#> [344,]  72  13      1         11        1   195
#> [345,]  68  10      1          8        1   160
#> [346,]  66  24      1         13        0   130
#> [347,]  70  35      1          0        1   105
#> [348,]  72  30      1          0        1   145
#> [349,]  70   7      0          7        0   102
#> [350,]  69  10      1          6        1   120
#> [351,]  67   9      0        180        0   158
#> [352,]  73  13      0        152        1   130
#> [353,]  70   5      0        180        0   150
#> [354,]  72   2      0          2        1   100
#> [355,]  67   4      1          1        0   134
#> [356,]  72   6      1          5        0   115
#> [357,]  71   3      1          2        0   150
#> [358,]  68   4      1          3        0   210
#> [359,]  72   5      0         28        0   120
#> [360,]  71   5      0        180        0   191
#> [361,]  73   6      0        180        1   117
#> [362,]  69   8      1          1        0   164
#> [363,]  68   7      0        180        1   130
#> [364,]  72  16      1          1        1   130
#> [365,]  73   6      1          0        1   270
#> [366,]  71   2      1          0        1   180
#> [367,]  73   7      0          7        1   140
#> [368,]  68  15      1         13        1   130
#> [369,]  70   3      0          3        1   159
#> [370,]  70  13      1          9        0   100
#> [371,]  72   6      0        180        1   130
#> [372,]  73   0      0        180        1   161
#> [373,]  69   2      1          0        1   110
#> [374,]  71   3      1          1        0   150
#> [375,]  71  15      1         11        0   165
#> [376,]  74  20      0         20        1   180
#> [377,]  68   9      0        180        1   120
#> [378,]  74   0      1          0        1    90
#> [379,]  73   3      1          0        1   136
#> [380,]  71  17      1         11        0   160
#> [381,]  71   8      1          7        0   149
#> [382,]  73  10      1          8        0   106
#> [383,]  74   4      0          4        0   120
#> [384,]  73   4      0         58        1   160
#> [385,]  72   5      1          3        1   160
#> [386,]  70   3      0        180        1   154
#> [387,]  73   6      0        180        0   110
#> [388,]  71   7      1          2        0   143
#> [389,]  72   8      1          0        1   140
#> [390,]  73  17      1         11        0   140
#> [391,]  71  13      1          8        0   121
#> [392,]  69   2      1          1        1    80
#> [393,]  69   7      0        180        1   144
#> [394,]  72  15      1         13        0   156
#> [395,]  70   8      0          8        0   120
#> [396,]  71  10      1          9        1   120
#> [397,]  75   2      1          1        0   145
#> [398,]  72  10      1          9        1   160
#> [399,]  73  10      1         10        1   120
#> [400,]  74  15      1          9        1   179
#> [401,]  73   1      0          1        1    80
#> [402,]  75  13      1          1        1   130
#> [403,]  71   4      0          4        0   134
#> [404,]  72  15      1         12        1   120
#> [405,]  70   7      1          4        0   184
#> [406,]  72   7      0         57        1   145
#> [407,]  73  10      0        180        0   162
#> [408,]  72  11      0         11        1   140
#> [409,]  70   3      0          3        0   150
#> [410,]  76  25      1         12        1   170
#> [411,]  73  12      1         12        1   140
#> [412,]  72   2      0        180        0   120
#> [413,]  75   1      0        180        1   140
#> [414,]  72   4      1          0        1   197
#> [415,]  71   3      1          0        0   144
#> [416,]  73   5      0        180        0   126
#> [417,]  73   4      0        180        0   124
#> [418,]  74  34      1          8        1   233
#> [419,]  76   3      1          0        1   120
#> [420,]  71  32      1         12        1   107
#> [421,]  72   5      0        180        0   154
#> [422,]  72   3      0        180        0   160
#> [423,]  76   5      0          5        1   130
#> [424,]  77  11      0         11        1   150
#> [425,]  77   4      0          4        0   185
#> [426,]  75   3      1          1        0   180
#> [427,]  72   7      1          2        0   142
#> [428,]  73  15      0         15        1   160
#> [429,]  74   3      0          3        1   128
#> [430,]  74   2      1          1        0   140
#> [431,]  76   8      1          0        1   141
#> [432,]  74  19      1          4        1   200
#> [433,]  73   6      0          6        1   114
#> [434,]  75  23      1         14        1   110
#> [435,]  72   4      0         85        1   120
#> [436,]  72   4      1          3        0   160
#> [437,]  76  17      1          0        1   200
#> [438,]  73   4      1          3        1   125
#> [439,]  76  13      1         10        0   110
#> [440,]  75   7      0          7        0   190
#> [441,]  73  13      1         11        0   195
#> [442,]  75  12      0         12        1   160
#> [443,]  74   8      1          0        1   105
#> [444,]  75   4      1          2        1   188
#> [445,]  74   6      0        180        0   160
#> [446,]  75   1      0          1        1   125
#> [447,]  74   2      0        180        0   111
#> [448,]  73   1      0         52        1   105
#> [449,]  73   0      0        180        0   156
#> [450,]  72   5      0        180        0   120
#> [451,]  78  12      1         11        1   160
#> [452,]  76  44      1         10        0   105
#> [453,]  76   5      1          0        1   167
#> [454,]  74   8      1          8        1   170
#> [455,]  75   9      0        180        1   140
#> [456,]  73  33      1         12        1   175
#> [457,]  77  12      1          9        1   100
#> [458,]  73  10      1          9        0   146
#> [459,]  77  12      0        180        0   130
#> [460,]  77   1      1          0        1    90
#> [461,]  76  12      1         11        1   120
#> [462,]  78   5      1          0        1   170
#> [463,]  73   7      1          0        0   174
#> [464,]  74   6      0         79        1   140
#> [465,]  74   9      1          8        0   200
#> [466,]  74   2      1          0        1   130
#> [467,]  78  18      0         18        1   144
#> [468,]  73   8      1          1        1   162
#> [469,]  73  11      1          2        1   110
#> [470,]  74   2      0        180        0   100
#> [471,]  74  15      0        180        1   172
#> [472,]  78   8      1          6        1   110
#> [473,]  76  13      1          1        1   170
#> [474,]  78  32      1          9        1   198
#> [475,]  80  10      1          6        1   147
#> [476,]  78   0      0        180        1   212
#> [477,]  78  13      1          5        0   130
#> [478,]  75   5      0        119        1   150
#> [479,]  75  12      1          1        1   120
#> [480,]  80   8      0          8        1   120
#> [481,]  74  10      1          8        0   135
#> [482,]  79   4      0         80        0   145
#> [483,]  78   2      1          1        0   130
#> [484,]  75   4      1          0        0   212
#> [485,]  77   2      1          0        1   143
#> [486,]  78  10      0        180        1   130
#> [487,]  76  11      1          0        0   120
#> [488,]  75  11      1          4        0   162
#> [489,]  75   3      0          3        0     0
#> [490,]  76   7      0         29        1   150
#> [491,]  77  24      0         24        1   160
#> [492,]  79   8      0         32        1   120
#> [493,]  80   6      0          6        1   150
#> [494,]  78   6      1          0        1   240
#> [495,]  78  11      1          1        1   140
#> [496,]  79  11      0        180        0   160
#> [497,]  78  14      1          0        1   140
#> [498,]  81   1      0          1        0   130
#> [499,]  78  11      1          8        1   118
#> [500,]  76   4      0          4        1   160
#> [501,]  76  10      1          8        0   180
#> [502,]  76  12      1         10        1   127
#> [503,]  77   6      0          6        1   107
#> [504,]  80   3      1          0        1   120
#> [505,]  75   2      1          1        1   204
#> [506,]  78  11      0        180        1   135
#> [507,]  76   1      0          1        1   140
#> [508,]  77  31      1          3        1   161
#> [509,]  76   1      0          1        1    90
#> [510,]  79   3      0          3        0   120
#> [511,]  77   7      0        180        1   170
#> [512,]  77   6      0          6        1   144
#> [513,]  79   4      1          0        1   120
#> [514,]  81   1      0        180        0   120
#> [515,]  80  15      1         12        1   150
#> [516,]  82   5      0          8        1   120
#> [517,]  78   4      0         59        1   112
#> [518,]  79  10      0         10        1   120
#> [519,]  80  15      1          0        1    90
#> [520,]  81   4      1          2        1   126
#> [521,]  79  28      0        164        0   100
#> [522,]  80   9      0        118        1   186
#> [523,]  80   6      0        173        1   160
#> [524,]  78  32      0        180        1   130
#> [525,]  79   1      0         37        1   140
#> [526,]  81   3      0        180        0   184
#> [527,]  81   2      0        175        0   172
#> [528,]  78   7      0          7        1   147
#> [529,]  77  13      1          0        1   190
#> [530,]  80   5      1          1        1   108
#> [531,]  78   4      0        180        0   175
#> [532,]  81   4      1          1        1   104
#> [533,]  78  20      1          0        1   109
#> [534,]  78   3      1          1        1   152
#> [535,]  77  10      1          8        1   130
#> [536,]  80   2      1          1        0   168
#> [537,]  79   6      0          6        0   152
#> [538,]  80   6      1          0        1   119
#> [539,]  80   5      0          5        1   130
#> [540,]  79  10      0        180        1   150
#> [541,]  81   1      0        108        0   129
#> [542,]  78  12      0        180        0   134
#> [543,]  79   1      0        125        0   193
#> [544,]  82  21      1          2        0   155
#> [545,]  79   4      0          4        1   121
#> [546,]  80   6      0          6        1   110
#> [547,]  82   5      0        180        0   110
#> [548,]  80  11      1          8        0   170
#> [549,]  78  23      1         10        1   145
#> [550,]  79   4      0          4        1   183
#> [551,]  78   9      1          4        1   120
#> [552,]  79   1      0        180        1   170
#> [553,]  81  15      0        180        1   140
#> [554,]  81  20      1          9        0   170
#> [555,]  81  16      0         16        1   110
#> [556,]  80   6      1          0        1   150
#> [557,]  80  11      1          8        0   110
#> [558,]  80   8      1          7        0   160
#> [559,]  79   7      0        177        0   197
#> [560,]  85   4      0        180        0    90
#> [561,]  81   2      1          1        0   198
#> [562,]  83   2      0          2        1   155
#> [563,]  82   6      0        128        1   100
#> [564,]  84   4      0        167        0   198
#> [565,]  84   5      0        180        1   203
#> [566,]  81   1      0          1        1   150
#> [567,]  84   1      0         38        1   205
#> [568,]  83   3      0        180        0   174
#> [569,]  81   4      0         90        1   138
#> [570,]  79   9      1          8        0   150
#> [571,]  85   3      1          2        1   160
#> [572,]  84   4      0         89        1   129
#> [573,]  79   4      0          4        1    60
#> [574,]  83   1      0          1        1   100
#> [575,]  80  30      1         13        0   220
#> [576,]  83   9      0        180        0   198
#> [577,]  83   3      0        114        0    98
#> [578,]  81  14      1         12        1   128
#> [579,]  83   2      0        154        0   130
#> [580,]  82   0      0          2        1   100
#> [581,]  85   9      1          6        1   160
#> [582,]  83   1      0        180        0   160
#> [583,]  81   4      0          4        0   175
#> [584,]  81  12      0         12        1   163
#> [585,]  82  16      1          8        0   103
#> [586,]  86  12      0        180        1   120
#> [587,]  83  12      1          2        1   170
#> [588,]  81  19      1         14        0   120
#> [589,]  82   3      1          2        0   130
#> [590,]  82  15      1          0        0   183
#> [591,]  80   2      0         88        0   135
#> [592,]  86   8      0          8        1   132
#> [593,]  81  16      1          9        0   180
#> [594,]  82   9      0        180        1   134
#> [595,]  84   3      0        180        1   120
#> [596,]  81  13      0        180        0   152
#> [597,]  85   3      0          3        1   118
#> [598,]  81   2      1          0        1   118
#> [599,]  83   9      0        180        1   149
#> [600,]  82   1      0        180        1   193
#> [601,]  83   4      0          4        0   130
#> [602,]  86  12      1          0        1   132
#> [603,]  82  14      1         11        1   103
#> [604,]  86   6      1          0        1   140
#> [605,]  84  16      0         70        1   150
#> [606,]  83  19      0         43        0   150
#> [607,]  84   3      1          2        0   125
#> [608,]  86   2      0        180        1   169
#> [609,]  88  14      1          3        1   130
#> [610,]  84   3      0          3        1   121
#> [611,]  84   7      1          2        0   148
#> [612,]  87   2      0        180        0   113
#> [613,]  84   9      0         92        1   110
#> [614,]  86   4      0         38        1   122
#> [615,]  82   4      0          4        0   130
#> [616,]  85   3      0          3        1   113
#> [617,]  86   6      1          1        0   112
#> [618,]  88   4      0          4        0   100
#> [619,]  88   4      0          4        1   115
#> [620,]  85  22      0         22        1   184
#> [621,]  83   9      0         65        1   150
#> [622,]  86   6      0         46        0   173
#> [623,]  88   2      0        180        1    68
#> [624,]  83   3      0          3        1   130
#> [625,]  87   8      0          8        1   157
#> [626,]  88   4      0          4        0    86
#> [627,]  89   4      0          4        1   153
#> [628,]  89   5      0        119        1   140
#> [629,]  87   6      0        180        1   110
#> [630,]  87   1      0          1        0   170
#> [631,]  84   8      0        180        1   119
#> [632,]  84   2      0        110        1   174
#> [633,]  84   0      0        180        1   136
#> [634,]  90  14      0         14        1   100
#> [635,]  88   1      0          1        0   135
#> [636,]  86   4      0        180        1   145
#> [637,]  87   2      0        180        0   160
#> [638,]  87   6      1          0        0   125
#> [639,]  91  10      0        145        0   135
#> [640,]  86   3      1          0        1    80
#> [641,]  88   7      0         24        0   119
#> [642,]  88   8      0         50        1   154
#> [643,]  87   6      0        126        1   168
#> [644,]  86  10      0        180        1   137
#> [645,]  86   9      1          7        0   130
#> [646,]  90   4      1          0        0   121
#> [647,]  91   1      0          1        1    74
#> [648,]  87  43      0        178        1   130
#> [649,]  87   5      0         36        1   150
#> [650,]  90   5      1          0        1   125
#> [651,]  91   3      0         33        1   137
#> [652,]  87   7      0         74        1   105
#> [653,]  89   2      0        168        0   118
#> [654,]  91   5      0        169        1   176
#> [655,]  89  52      0         52        1   130
#> [656,]  92   7      0          7        1   110
#> [657,]  89  14      0        180        1    84
#> [658,]  90  18      0        180        0   188
#> [659,]  91   4      1          0        1   120
#> [660,]  90  19      1         11        1   129
#> [661,]  90   1      0          1        1   118
#> [662,]  91   2      0          2        1   116
#> [663,]  94   8      0          8        1   142
#> [664,]  96   3      0         12        1    97
#> [665,]  91  12      0         53        1   212
#> [666,]  93   0      1          0        1   122
#> [667,]  92   5      0         69        0   139
#> [668,]  92   2      0          2        0   112
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#>  [11]  12.0    5.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   2.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 150.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+
#>  [41] 161.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+
#>  [61]   2.0    1.0  179.0+ 180.0+ 179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+ 180.0+ 180.0+
#>  [81]  77.0  180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+
#>  [91] 166.0+  99.0  180.0+  16.0+ 152.0+   6.0+ 180.0+ 180.0+  13.0+ 180.0+
#> [101] 174.0+   6.0+   1.0    9.0+ 180.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+
#> [111] 180.0+ 180.0+ 180.0+  16.0+ 180.0+  15.0+ 180.0+ 180.0+ 180.0+ 134.0+
#> [121] 180.0+   8.0    3.0+ 180.0+ 180.0+ 180.0+ 140.0    1.0  180.0+ 180.0+
#> [131] 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+   5.0+
#> [141] 180.0+   4.0+ 147.0+ 180.0+ 180.0+   4.0+ 180.0+   9.0+   1.0  180.0+
#> [151]   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+  64.0  180.0+
#> [161] 180.0+ 180.0+ 171.0+ 180.0+   3.0    1.0  180.0+ 180.0+  45.0    3.0+
#> [171]  19.0    9.0+ 172.0+  24.0  180.0+   8.0  180.0+ 180.0+  15.0  180.0+
#> [181]  13.0+   8.0+ 180.0+ 180.0+ 170.0  180.0+ 169.0    7.0    6.0  180.0+
#> [191] 180.0+ 180.0+ 180.0+  30.0  180.0+ 180.0+  28.0    5.0   18.0    5.0+
#> [201] 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [211] 180.0+ 180.0+   7.0+  22.0  180.0+  84.0    7.0+ 180.0+ 180.0+   1.0 
#> [221] 180.0+ 180.0+   3.0+ 167.0    6.0+ 180.0+  17.0  180.0+  12.0  180.0+
#> [231] 180.0+ 180.0+  36.0  180.0+  88.0  180.0+ 180.0+ 180.0+   0.5  180.0+
#> [241]  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0    3.0  180.0+  11.0+
#> [251]   2.0+  18.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0   15.0    5.0+   0.5+
#> [261] 180.0+   3.0+ 180.0+ 175.0+ 180.0+   8.0    5.0   16.0  180.0+   1.0 
#> [271] 180.0+ 123.0+  18.0   11.0+ 180.0+  79.0   15.0+ 180.0+   4.0+  15.0 
#> [281] 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0   19.0+
#> [291]  12.0   99.0  180.0+ 180.0+ 180.0+ 180.0+   0.5   18.0  180.0+ 180.0+
#> [301]  93.0   21.0+ 180.0+   1.0   18.0+ 101.0    4.0  150.0  180.0+   1.0 
#> [311] 180.0+ 180.0+ 171.0  180.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+   7.0+
#> [321]  45.0    5.0+   3.0+ 180.0+  36.0    5.0+ 180.0+ 180.0+  97.0  180.0+
#> [331]   8.0+ 180.0+ 180.0+ 180.0+   7.0   13.0+ 180.0+  51.0  180.0+   1.0 
#> [341]  60.0   76.0  180.0+ 132.0   10.0+ 180.0+ 180.0+ 162.0    7.0+ 180.0+
#> [351] 180.0+ 152.0  180.0+   2.0   76.0  180.0+ 180.0+ 180.0+  28.0  180.0+
#> [361] 180.0+ 180.0+ 180.0+  16.0+   6.0  180.0+   7.0+  15.0    3.0+  13.0+
#> [371] 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0  180.0+   0.5  180.0+ 180.0+
#> [381]   8.0   87.0    4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [391] 175.0    2.0  180.0+ 180.0+   8.0+ 179.0+ 180.0+ 159.0   15.0  180.0+
#> [401]   1.0   13.0    4.0+ 180.0+ 104.0+  57.0  180.0+  11.0    3.0+ 180.0+
#> [411]  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+ 177.0+
#> [421] 180.0+ 180.0+   5.0   11.0+   4.0+ 180.0+   7.0   15.0+   3.0  180.0+
#> [431] 180.0+ 180.0+   6.0  180.0+  85.0  180.0+  17.0+ 180.0+ 174.0+   7.0 
#> [441] 180.0+  12.0  180.0+  46.0  180.0+   1.0  180.0+  52.0  180.0+ 180.0+
#> [451]  12.0  180.0+ 180.0+   8.0  180.0+  33.0  180.0+ 180.0+ 180.0+   1.0 
#> [461]  12.0  180.0+   7.0+  79.0  168.0+ 176.0+  18.0  180.0+  11.0  180.0+
#> [471] 180.0+   8.0+ 180.0+  32.0   10.0  180.0+ 172.0  119.0   12.0    8.0 
#> [481] 180.0+  80.0  180.0+   4.0+   2.0  180.0+  11.0  152.0+   3.0   29.0 
#> [491]  24.0   32.0    6.0  180.0+ 180.0+ 180.0+ 180.0+   1.0   11.0    4.0 
#> [501]  10.0+ 180.0+   6.0    3.0+   2.0+ 180.0+   1.0  171.0    1.0    3.0 
#> [511] 180.0+   6.0  138.0  180.0+ 180.0+   8.0   59.0   10.0+ 180.0+  93.0 
#> [521] 164.0  118.0  173.0  180.0+  37.0  180.0+ 175.0+   7.0+  22.0    5.0+
#> [531] 180.0+  71.0   20.0+   3.0+  10.0   10.0    6.0+   6.0    5.0  180.0+
#> [541] 108.0  180.0+ 125.0  180.0+   4.0    6.0  180.0+ 169.0   70.0    4.0 
#> [551] 180.0+ 180.0+ 180.0+  20.0   16.0  180.0+ 180.0+ 180.0+ 177.0+ 180.0+
#> [561] 180.0+   2.0  128.0  167.0  180.0+   1.0   38.0  180.0+  90.0  180.0+
#> [571] 180.0+  89.0    4.0    1.0   30.0  180.0+ 114.0  180.0+ 154.0    2.0 
#> [581] 180.0+ 180.0+   4.0+  12.0   16.0+ 180.0+  77.0  180.0+   3.0   83.0 
#> [591]  88.0    8.0  180.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+
#> [601]   4.0+ 180.0+ 174.0    6.0   70.0   43.0  180.0+ 180.0+  14.0    3.0 
#> [611] 180.0+ 180.0+  92.0   38.0    4.0    3.0+   6.0+   4.0+   4.0   22.0 
#> [621]  65.0   46.0  180.0+   3.0+   8.0+   4.0    4.0  119.0  180.0+   1.0+
#> [631] 180.0+ 110.0  180.0+  14.0    1.0+ 180.0+ 180.0+  25.0  145.0    3.0 
#> [641]  24.0   50.0  126.0  180.0+ 180.0+   4.0    1.0  178.0+  36.0   89.0 
#> [651]  33.0   74.0  168.0  169.0   52.0    7.0  180.0+ 180.0+   4.0  180.0+
#> [661]   1.0+   2.0    8.0+  12.0   53.0    0.5   69.0    2.0  180.0+  15.0+
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
#>   0.8443982 
```
