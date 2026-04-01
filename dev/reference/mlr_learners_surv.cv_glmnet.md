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
#> min 0.00448    41   2.786 0.1252       6
#> 1se 0.06657    12   2.895 0.1189       4
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
#>  [11,]  36   1      0        180        1   155
#>  [12,]  35   0      0        180        1   119
#>  [13,]  38  12      1          8        1   120
#>  [14,]  38  16      1         10        0   160
#>  [15,]  42   3      1          1        1   130
#>  [16,]  37   1      1          0        1   146
#>  [17,]  40   2      1          1        1   148
#>  [18,]  42   2      0        180        1   100
#>  [19,]  38   5      1          3        0   125
#>  [20,]  42   2      0          2        0   140
#>  [21,]  40   6      0        180        1   138
#>  [22,]  42   2      0        180        0   100
#>  [23,]  43   3      1          0        1   100
#>  [24,]  40   1      1          0        1   145
#>  [25,]  43   4      1          0        1   130
#>  [26,]  42  15      1         13        1   125
#>  [27,]  40   3      1          1        0   170
#>  [28,]  42  12      1         10        1   170
#>  [29,]  43   2      1          1        1   116
#>  [30,]  45   3      0        180        1   154
#>  [31,]  41  10      1          8        0   150
#>  [32,]  44   3      0        180        0   141
#>  [33,]  45   9      1          7        0   110
#>  [34,]  45   6      0        180        1   170
#>  [35,]  41   5      1          4        1   141
#>  [36,]  44   2      1          1        1   150
#>  [37,]  46  15      0        180        0   120
#>  [38,]  46   2      1          1        0   126
#>  [39,]  47   4      1          3        0   118
#>  [40,]  48  15      0        180        1   160
#>  [41,]  45   3      0        150        0   130
#>  [42,]  46   7      1          2        0   166
#>  [43,]  43  10      0        180        0   185
#>  [44,]  47   6      1          0        1   116
#>  [45,]  46  13      1         10        0   100
#>  [46,]  44   0      1          0        1    96
#>  [47,]  47   4      1          3        1   160
#>  [48,]  43   3      1          0        1   124
#>  [49,]  45   8      1          0        1   117
#>  [50,]  46   2      1          1        1   122
#>  [51,]  44   9      1          8        1   135
#>  [52,]  45   5      0        180        1   190
#>  [53,]  46   4      0        180        1   121
#>  [54,]  44   2      0        180        0   142
#>  [55,]  46  15      0        180        1   120
#>  [56,]  45   9      1          0        1   145
#>  [57,]  47   3      1          1        1   120
#>  [58,]  48  12      1         11        0   200
#>  [59,]  47   5      1          3        1   130
#>  [60,]  47   9      1          6        0   170
#>  [61,]  49   4      0        180        0   117
#>  [62,]  47  10      0         10        1   140
#>  [63,]  50   1      1          0        1   129
#>  [64,]  48   2      1          0        0   184
#>  [65,]  47   7      0        180        0   145
#>  [66,]  46   9      1          9        1   122
#>  [67,]  49   2      0          2        0   105
#>  [68,]  51   1      0          1        1   145
#>  [69,]  50   7      1          0        1    92
#>  [70,]  50   4      0          4        1   100
#>  [71,]  51   3      1          2        0   113
#>  [72,]  50   1      1          0        0   150
#>  [73,]  50   9      0        180        0   130
#>  [74,]  49   7      1          4        1    90
#>  [75,]  51   8      0        180        1   140
#>  [76,]  52   2      0        180        0   155
#>  [77,]  46   3      0        180        1   120
#>  [78,]  46   1      1          1        0   145
#>  [79,]  50   4      1          1        0   150
#>  [80,]  48   7      1          0        1   110
#>  [81,]  53   8      0         36        1   160
#>  [82,]  48  17      1         10        0   111
#>  [83,]  47   2      1          1        0   110
#>  [84,]  52   4      1          4        0   152
#>  [85,]  49  15      0        180        1   160
#>  [86,]  53   5      0        180        1   140
#>  [87,]  53   5      0         77        0   159
#>  [88,]  53   7      1          0        0   199
#>  [89,]  54   6      1          3        0   129
#>  [90,]  51   3      1          1        0   140
#>  [91,]  50   2      0          5        1   106
#>  [92,]  50  10      1          6        0   122
#>  [93,]  53   8      1          7        0   160
#>  [94,]  48   3      1          2        0   150
#>  [95,]  49   5      1          2        1   150
#>  [96,]  48   6      0        180        0   160
#>  [97,]  48  11      1         10        0   120
#>  [98,]  53   4      1          0        1   156
#>  [99,]  51  13      0         99        1   160
#> [100,]  54   9      1          0        1   138
#> [101,]  52   7      1          2        0   154
#> [102,]  54   9      1          1        0   130
#> [103,]  55   4      1          2        0   150
#> [104,]  51  13      1         11        0   145
#> [105,]  50   5      1          4        1   150
#> [106,]  55  28      1         13        1   160
#> [107,]  49   6      1          0        1   130
#> [108,]  49   1      0          1        1   110
#> [109,]  53   9      0          9        1    95
#> [110,]  53   8      1          0        1   130
#> [111,]  50   7      1          0        1   127
#> [112,]  56   4      1          1        1   130
#> [113,]  52   5      0        175        1   117
#> [114,]  55   1      0        180        0   127
#> [115,]  54   1      0        180        0   162
#> [116,]  54   7      1          0        1   100
#> [117,]  56   3      0        180        1   193
#> [118,]  56   2      0        180        0   132
#> [119,]  55   5      1          4        1   120
#> [120,]  53  18      1          9        1   150
#> [121,]  54   3      0        180        1   180
#> [122,]  55   6      0        180        0   170
#> [123,]  52  16      0         16        0   152
#> [124,]  53  10      1          9        0   172
#> [125,]  53   4      0        180        1   150
#> [126,]  55   2      0        134        1   140
#> [127,]  54   3      0        180        0   128
#> [128,]  56   3      0          8        1   139
#> [129,]  57   3      0          3        0   120
#> [130,]  54   2      1          1        0   135
#> [131,]  54   2      1          1        1   176
#> [132,]  57   1      0        180        1   156
#> [133,]  57   1      0          1        1   100
#> [134,]  56   4      1          0        1   140
#> [135,]  55  11      1          7        0   104
#> [136,]  56  14      1         11        0   130
#> [137,]  53   3      1          0        1   200
#> [138,]  57  10      0        180        1   170
#> [139,]  58   8      0          8        1   130
#> [140,]  54   5      0        180        1   108
#> [141,]  53  21      1         13        1   130
#> [142,]  59   3      1          1        0   172
#> [143,]  57   4      0        180        1   119
#> [144,]  58   6      1          0        1    90
#> [145,]  54  17      1          8        1   227
#> [146,]  55  13      0        166        1   140
#> [147,]  56   5      0          5        1   150
#> [148,]  54  23      1          8        0   120
#> [149,]  53   4      0        147        1   145
#> [150,]  56   4      0          4        0   164
#> [151,]  58   9      1          0        1   180
#> [152,]  58   1      1          1        1   200
#> [153,]  55   5      1          0        0   140
#> [154,]  55   2      0          2        0   106
#> [155,]  57   1      0        180        0   148
#> [156,]  59   3      0        180        0   120
#> [157,]  57  10      1          9        0   103
#> [158,]  59   4      1          0        1   152
#> [159,]  61   9      0          9        1   160
#> [160,]  58   4      1          3        0   120
#> [161,]  60   0      1          0        1    80
#> [162,]  59   2      1          1        0   140
#> [163,]  58  14      1          6        0   190
#> [164,]  61   4      1          3        0   151
#> [165,]  61   9      1          8        0   150
#> [166,]  58   1      0          1        1   100
#> [167,]  57  13      1         10        0   110
#> [168,]  57   2      1          0        1   116
#> [169,]  57  11      0        180        1   150
#> [170,]  56  14      0         45        0   130
#> [171,]  58  19      1         13        1   140
#> [172,]  59   9      1          0        1    80
#> [173,]  55   4      1          3        1   160
#> [174,]  58  11      0        172        1   135
#> [175,]  60  12      1          0        1   114
#> [176,]  55   9      1          7        1   135
#> [177,]  61  13      1         12        1   130
#> [178,]  59  11      1          8        1   190
#> [179,]  57   1      0          1        0   126
#> [180,]  57  15      1         13        1   110
#> [181,]  59   5      1          2        0   182
#> [182,]  58   5      1          1        1   135
#> [183,]  59  10      0        180        0   160
#> [184,]  61   8      0         77        0   120
#> [185,]  58   8      1          5        0   152
#> [186,]  62  10      1          0        1   153
#> [187,]  57   3      1          0        0   100
#> [188,]  61  18      0        170        0   140
#> [189,]  61  28      1          7        0   133
#> [190,]  58   8      1          3        1   150
#> [191,]  57   7      0        169        0   180
#> [192,]  60   7      0          7        0   147
#> [193,]  61   6      0          6        0   134
#> [194,]  59  13      1          2        0   198
#> [195,]  57  12      1          9        1   120
#> [196,]  60  17      1          8        1   140
#> [197,]  58   3      1          0        1   146
#> [198,]  58   2      0         30        0   202
#> [199,]  59  16      1          9        1   133
#> [200,]  63   6      0         28        1   120
#> [201,]  61  13      0         13        0   120
#> [202,]  61   5      0          5        1   110
#> [203,]  57  18      1          9        1    93
#> [204,]  61   5      0          5        1   160
#> [205,]  58  11      1          9        0   179
#> [206,]  57   2      1          1        0   159
#> [207,]  62   1      1          0        1   172
#> [208,]  58   7      0        180        1   150
#> [209,]  63   3      1          1        0   180
#> [210,]  63   4      1          3        0   222
#> [211,]  62   3      0        180        1   105
#> [212,]  63   4      0        180        1   190
#> [213,]  64   4      0        180        0   130
#> [214,]  60  18      1         13        0   132
#> [215,]  58   9      1          9        0   110
#> [216,]  62   7      0          7        0   150
#> [217,]  58   2      0        180        0   127
#> [218,]  59   4      0        180        0   196
#> [219,]  60   7      1          1        1    90
#> [220,]  65  13      0        180        1   100
#> [221,]  63   1      0          1        0   162
#> [222,]  63   1      0          1        0   130
#> [223,]  62   6      0        180        0   170
#> [224,]  61  15      1         13        0   170
#> [225,]  59   4      0          4        0   149
#> [226,]  60   3      0          3        0   168
#> [227,]  64  10      1          9        0   160
#> [228,]  62   6      0          6        0   120
#> [229,]  63  12      1         10        0   200
#> [230,]  59  10      0        180        1   130
#> [231,]  61   6      1          1        1   117
#> [232,]  64  12      1         11        0   160
#> [233,]  64   6      1          0        1   140
#> [234,]  63  10      1          0        1   148
#> [235,]  65  36      1         11        0   140
#> [236,]  63   4      1          3        0   162
#> [237,]  66   3      1          1        0   127
#> [238,]  64  32      1          9        1   160
#> [239,]  63  12      1          9        0   114
#> [240,]  65   8      1          0        0   168
#> [241,]  65  10      1          8        1   120
#> [242,]  64  21      1         10        0   190
#> [243,]  61  12      1         11        0   154
#> [244,]  64   9      0        180        0   150
#> [245,]  61   4      0        180        1   113
#> [246,]  64   7      0        180        1   120
#> [247,]  66   6      1          1        1   130
#> [248,]  63  12      0         12        1   150
#> [249,]  62   3      1          1        1   199
#> [250,]  65   3      1          0        1    80
#> [251,]  63   2      1          1        0   180
#> [252,]  67  11      0         11        1   100
#> [253,]  64   2      0          2        0   201
#> [254,]  66  18      1          5        0   142
#> [255,]  66  16      1         11        1   169
#> [256,]  62   9      0        180        0   145
#> [257,]  63   9      1          8        1   160
#> [258,]  63   3      1          2        0   120
#> [259,]  63   2      1          0        0   140
#> [260,]  64  19      1          8        1   160
#> [261,]  65   8      1          0        1   140
#> [262,]  68   5      1          4        1   150
#> [263,]  64  13      1         12        1   150
#> [264,]  64   6      1          0        1   125
#> [265,]  66   7      1          0        1   115
#> [266,]  66  13      1          0        0   118
#> [267,]  64   0      0          0        1   148
#> [268,]  67   4      1          3        0   130
#> [269,]  66   3      1          0        1   135
#> [270,]  66   6      1          0        1   140
#> [271,]  65   2      1          1        1   170
#> [272,]  68   1      0        180        1   166
#> [273,]  63   7      1          0        0   162
#> [274,]  68   5      0          5        1    90
#> [275,]  63  10      0         16        1   160
#> [276,]  66  14      0        180        0   130
#> [277,]  63   8      1          1        1   162
#> [278,]  65  18      1          3        0   120
#> [279,]  63  10      0         18        1   130
#> [280,]  68  11      0        180        0   160
#> [281,]  66  12      1         10        1   150
#> [282,]  66  11      1          0        0   100
#> [283,]  69  12      0         15        1   140
#> [284,]  65  11      1          6        0   130
#> [285,]  69  21      1         10        0   180
#> [286,]  69   6      0        180        1   100
#> [287,]  66   9      1          8        0   130
#> [288,]  63   8      0        180        1   120
#> [289,]  68  14      1         13        1   140
#> [290,]  65   8      1          0        1    90
#> [291,]  66   3      0          3        1   138
#> [292,]  69   1      1          0        0   170
#> [293,]  68  10      1         10        1   150
#> [294,]  67   7      1          4        1   130
#> [295,]  63   2      1          0        0    99
#> [296,]  67   2      0        180        0   184
#> [297,]  65   6      0          6        0    80
#> [298,]  65  10      1          1        1   148
#> [299,]  66  19      1         12        1   150
#> [300,]  67  12      1         12        0   160
#> [301,]  69   6      0         99        1   140
#> [302,]  66   4      0        180        1   130
#> [303,]  70  15      1         12        1   132
#> [304,]  64   4      0        180        1   140
#> [305,]  64   0      1          0        1   118
#> [306,]  67   2      0         18        0   131
#> [307,]  66   7      1          5        1   131
#> [308,]  66   4      0        180        0   177
#> [309,]  68   4      1          0        1   160
#> [310,]  69   4      1          3        1   150
#> [311,]  65  13      1         12        1   130
#> [312,]  69  17      1         10        0   140
#> [313,]  66   6      0        180        0   140
#> [314,]  65   6      0        101        1   115
#> [315,]  68   4      0          4        1   190
#> [316,]  71   3      0          5        0   112
#> [317,]  68   7      0        150        0   210
#> [318,]  66   1      1          1        1   165
#> [319,]  70  14      0        171        0   166
#> [320,]  66   4      0        180        0   130
#> [321,]  67  10      1          9        0   200
#> [322,]  68  18      1         14        1   170
#> [323,]  69   0      0          0        1   148
#> [324,]  65   2      0        180        0   130
#> [325,]  69   3      1          2        0   151
#> [326,]  65  14      1         13        1   150
#> [327,]  71   7      0          7        0   230
#> [328,]  66   2      0          2        1   228
#> [329,]  69   5      0          5        1   142
#> [330,]  70  22      1         13        0   103
#> [331,]  67   5      0          5        0   130
#> [332,]  68   6      0        180        0   145
#> [333,]  69   8      1          5        1   195
#> [334,]  69   6      1          4        1   174
#> [335,]  72   7      0          7        1   110
#> [336,]  69  19      0        180        0   130
#> [337,]  68  18      0         18        1   100
#> [338,]  67  14      0        172        1   140
#> [339,]  69  11      1          0        1   120
#> [340,]  66   2      0        180        0   130
#> [341,]  68   2      0          7        1   130
#> [342,]  67  13      1          9        0   130
#> [343,]  70   9      0        180        1   142
#> [344,]  72   5      1          4        0   170
#> [345,]  67  22      1          1        1   140
#> [346,]  67  12      1          8        0   120
#> [347,]  69   1      0          1        1   110
#> [348,]  69   5      0         76        0   120
#> [349,]  67   8      1          0        1   130
#> [350,]  68  10      1          8        1   160
#> [351,]  66  24      1         13        0   130
#> [352,]  72  30      1          0        1   145
#> [353,]  68   7      1          2        0   135
#> [354,]  71   6      0          9        0   120
#> [355,]  70  11      0        180        1   210
#> [356,]  72  19      1          8        0   120
#> [357,]  67   8      0        180        1   170
#> [358,]  67   5      1          0        1   147
#> [359,]  67   9      0        180        0   158
#> [360,]  73  13      0        152        1   130
#> [361,]  70   5      0        180        0   150
#> [362,]  67   4      1          1        0   134
#> [363,]  72   6      1          5        0   115
#> [364,]  71   1      0        173        1   188
#> [365,]  70   3      0        180        0   121
#> [366,]  71   3      1          2        0   150
#> [367,]  68   4      1          3        0   210
#> [368,]  73   6      0        180        1   117
#> [369,]  69  16      1         10        1   140
#> [370,]  69   8      1          1        0   164
#> [371,]  72  16      1          1        1   130
#> [372,]  70   4      0        180        0   180
#> [373,]  69   1      1          0        0   155
#> [374,]  73   6      1          0        1   270
#> [375,]  72   8      1          1        1   150
#> [376,]  73   7      0          7        1   140
#> [377,]  70   3      0          3        1   159
#> [378,]  70  13      1          9        0   100
#> [379,]  72   6      0        180        1   130
#> [380,]  73   0      0        180        1   161
#> [381,]  73   4      0        180        1   154
#> [382,]  69   2      1          0        1   110
#> [383,]  71   3      1          1        0   150
#> [384,]  68   9      0        180        1   120
#> [385,]  74   0      1          0        1    90
#> [386,]  73   3      1          0        1   136
#> [387,]  70   5      1          0        1   190
#> [388,]  71  17      1         11        0   160
#> [389,]  71   8      1          7        0   149
#> [390,]  71   3      1          2        1   190
#> [391,]  73  10      1          8        0   106
#> [392,]  70  26      1         11        1   120
#> [393,]  72   5      1          3        1   160
#> [394,]  70   3      0        180        1   154
#> [395,]  72  15      1          0        1   150
#> [396,]  72   8      1          0        1   140
#> [397,]  73  17      1         11        0   140
#> [398,]  71  13      1          8        0   121
#> [399,]  69   2      1          1        1    80
#> [400,]  71  14      1         13        1   170
#> [401,]  74   7      1          0        1   117
#> [402,]  69   7      0        180        1   144
#> [403,]  72  15      1         13        0   156
#> [404,]  70   8      0          8        0   120
#> [405,]  71  10      1          9        1   120
#> [406,]  75   1      0          1        0   133
#> [407,]  73  10      1          9        1   146
#> [408,]  73  10      1         10        1   120
#> [409,]  74  15      1          9        1   179
#> [410,]  73   1      0          1        1    80
#> [411,]  75  13      1          1        1   130
#> [412,]  71   4      0          4        0   134
#> [413,]  72  15      1         12        1   120
#> [414,]  70   7      1          4        0   184
#> [415,]  72   1      1          1        0   168
#> [416,]  72   7      0         57        1   145
#> [417,]  73  10      0        180        0   162
#> [418,]  76  25      1         12        1   170
#> [419,]  75   1      0        180        1   140
#> [420,]  72   4      1          0        1   197
#> [421,]  71   3      1          0        0   144
#> [422,]  73   5      0        180        0   126
#> [423,]  73   4      0        180        0   124
#> [424,]  74  34      1          8        1   233
#> [425,]  76   3      1          0        1   120
#> [426,]  76   5      0          5        1   130
#> [427,]  77  11      0         11        1   150
#> [428,]  72   7      1          2        0   142
#> [429,]  74   7      0        180        1   150
#> [430,]  76   1      0        180        0   114
#> [431,]  74   2      1          1        0   140
#> [432,]  73   6      0          6        1   114
#> [433,]  72   4      1          3        0   160
#> [434,]  76  17      1          0        1   200
#> [435,]  73   4      1          3        1   125
#> [436,]  76  13      1         10        0   110
#> [437,]  75   4      1          0        1   122
#> [438,]  75   7      0          7        0   190
#> [439,]  75   0      0          0        1   130
#> [440,]  73  13      1         11        0   195
#> [441,]  75  12      0         12        1   160
#> [442,]  74   8      1          0        1   105
#> [443,]  75   4      1          2        1   188
#> [444,]  74   6      0        180        0   160
#> [445,]  76   4      0          4        1   155
#> [446,]  75   1      0          1        1   125
#> [447,]  74   2      0        180        0   111
#> [448,]  73   1      0         52        1   105
#> [449,]  73   0      0        180        0   156
#> [450,]  72   5      0        180        0   120
#> [451,]  78  12      1         11        1   160
#> [452,]  76  44      1         10        0   105
#> [453,]  76   5      0        180        0   185
#> [454,]  74  10      1          0        1   135
#> [455,]  75   9      0        180        1   140
#> [456,]  73  33      1         12        1   175
#> [457,]  77   5      1          0        0   123
#> [458,]  77  12      1          9        1   100
#> [459,]  73  10      1          9        0   146
#> [460,]  77  12      0        180        0   130
#> [461,]  77   1      1          0        1    90
#> [462,]  76  12      1         11        1   120
#> [463,]  78   5      1          0        1   170
#> [464,]  73   7      1          0        0   174
#> [465,]  74   6      0         79        1   140
#> [466,]  75   3      1          1        1   171
#> [467,]  74   9      1          8        0   200
#> [468,]  75   6      0        180        0   150
#> [469,]  78  18      0         18        1   144
#> [470,]  77   3      0        180        0   110
#> [471,]  76  29      0         47        0    90
#> [472,]  73   8      1          1        1   162
#> [473,]  78   7      0          7        1   133
#> [474,]  78   8      1          6        1   110
#> [475,]  74   7      0          7        0   161
#> [476,]  76  13      1          1        1   170
#> [477,]  78  32      1          9        1   198
#> [478,]  79   6      0        180        0   170
#> [479,]  75   5      0        119        1   150
#> [480,]  75  12      1          1        1   120
#> [481,]  78  15      0        180        1   270
#> [482,]  80   8      0          8        1   120
#> [483,]  74  10      1          8        0   135
#> [484,]  76   1      0          1        1    83
#> [485,]  79   4      0         80        0   145
#> [486,]  78  12      1          9        0   150
#> [487,]  78   2      1          1        0   130
#> [488,]  75   4      1          0        0   212
#> [489,]  77   2      1          0        1   143
#> [490,]  77  24      0         24        1   160
#> [491,]  79   8      0         32        1   120
#> [492,]  80   9      0         23        1   128
#> [493,]  80   6      0          6        1   150
#> [494,]  78   6      1          0        1   240
#> [495,]  76   3      1          0        1   140
#> [496,]  78  11      1          1        1   140
#> [497,]  79  11      0        180        0   160
#> [498,]  79   2      1          0        1   121
#> [499,]  78  14      1          0        1   140
#> [500,]  76   4      0          4        1   160
#> [501,]  79   4      0          4        1   125
#> [502,]  76  10      1          8        0   180
#> [503,]  76  12      1         10        1   127
#> [504,]  77   6      0          6        1   107
#> [505,]  80   3      1          0        1   120
#> [506,]  75   2      1          1        1   204
#> [507,]  78  11      0        180        1   135
#> [508,]  76   1      0          1        1   140
#> [509,]  76   1      0          1        1    90
#> [510,]  78   7      1          0        1   110
#> [511,]  77   7      0        180        1   170
#> [512,]  79   4      1          0        1   120
#> [513,]  80  15      1         12        1   150
#> [514,]  80  40      1          0        1   138
#> [515,]  80  17      1         12        0   100
#> [516,]  76   7      0        161        0   151
#> [517,]  81   4      1          2        1   126
#> [518,]  79  28      0        164        0   100
#> [519,]  80   9      0        118        1   186
#> [520,]  80   6      0        173        1   160
#> [521,]  78  32      0        180        1   130
#> [522,]  81   3      0        180        0   184
#> [523,]  81   2      0        175        0   172
#> [524,]  77  13      1          0        1   190
#> [525,]  78  15      0         15        0   165
#> [526,]  80   5      1          1        1   108
#> [527,]  78   4      0        180        0   175
#> [528,]  78  26      1          5        0   194
#> [529,]  76   1      0        166        0   131
#> [530,]  78  20      1          0        1   109
#> [531,]  78   3      1          1        1   152
#> [532,]  77  10      1          8        1   130
#> [533,]  82   3      1          1        1   144
#> [534,]  77   5      0         85        0   188
#> [535,]  80   2      1          1        0   168
#> [536,]  79   6      0          6        0   152
#> [537,]  80   6      1          0        1   119
#> [538,]  82   1      1          0        1    82
#> [539,]  77   4      0        180        1    98
#> [540,]  81   1      0        108        0   129
#> [541,]  79   1      0        125        0   193
#> [542,]  82  21      1          2        0   155
#> [543,]  84  22      1         10        0   180
#> [544,]  80   6      0          6        1   110
#> [545,]  83   9      1          5        1   170
#> [546,]  82   5      0        180        0   110
#> [547,]  83   5      0        180        0   148
#> [548,]  79   7      1          6        0   130
#> [549,]  83   4      0        103        0    97
#> [550,]  81  11      1          8        0   160
#> [551,]  81   5      0        177        0    41
#> [552,]  80  11      1          8        0   170
#> [553,]  79   4      0          4        1   183
#> [554,]  78   9      1          4        1   120
#> [555,]  82   8      1          1        0   128
#> [556,]  81  15      0        180        1   140
#> [557,]  80   7      1          0        1   146
#> [558,]  81  20      1          9        0   170
#> [559,]  83   8      0          8        0   115
#> [560,]  81   8      0        180        0   146
#> [561,]  80   8      1          7        0   160
#> [562,]  79   7      0        177        0   197
#> [563,]  85   4      0        180        0    90
#> [564,]  81   2      1          1        0   198
#> [565,]  83   2      0          2        1   155
#> [566,]  84   4      0        167        0   198
#> [567,]  82  23      1          0        0   110
#> [568,]  84   5      0        180        1   203
#> [569,]  84   4      0          4        1    85
#> [570,]  81   1      0          1        1   150
#> [571,]  84   1      0         38        1   205
#> [572,]  83   3      0        180        0   174
#> [573,]  81   4      0         90        1   138
#> [574,]  79   9      1          8        0   150
#> [575,]  85   3      1          2        1   160
#> [576,]  80   2      1          0        1   130
#> [577,]  79   4      0          4        1    60
#> [578,]  80   6      0         71        1   189
#> [579,]  83   1      0          1        1   100
#> [580,]  82  19      0         19        0   120
#> [581,]  83   3      0        114        0    98
#> [582,]  83   2      0        154        0   130
#> [583,]  85   9      1          6        1   160
#> [584,]  83   1      0        180        0   160
#> [585,]  81   4      0          4        0   175
#> [586,]  84  15      1         13        1   110
#> [587,]  81   1      0          1        1   145
#> [588,]  81  12      0         12        1   163
#> [589,]  82   5      1          0        1   146
#> [590,]  86  12      0        180        1   120
#> [591,]  83  12      1          2        1   170
#> [592,]  81  19      1         14        0   120
#> [593,]  82   3      1          2        0   130
#> [594,]  80   2      0         88        0   135
#> [595,]  83   7      0        126        0   135
#> [596,]  86   8      0          8        1   132
#> [597,]  84   6      0        165        0   145
#> [598,]  82   9      0        180        1   134
#> [599,]  84   3      0        180        1   120
#> [600,]  81  13      0        180        0   152
#> [601,]  81   2      1          0        1   118
#> [602,]  82   1      0        180        1   193
#> [603,]  87   2      0          5        1   137
#> [604,]  86   6      1          0        1   140
#> [605,]  83  19      0         43        0   150
#> [606,]  84   3      1          2        0   125
#> [607,]  83  10      1          0        1   190
#> [608,]  88  14      1          3        1   130
#> [609,]  84   3      0          3        1   121
#> [610,]  83  13      1         12        0   170
#> [611,]  84   7      1          2        0   148
#> [612,]  87   2      0        180        0   113
#> [613,]  84   9      0         92        1   110
#> [614,]  84   3      0        180        1   170
#> [615,]  86   4      0         38        1   122
#> [616,]  82   4      0          4        0   130
#> [617,]  86  13      0        177        0   163
#> [618,]  86   6      0          6        1   117
#> [619,]  84  13      0         62        1   100
#> [620,]  86   6      1          1        0   112
#> [621,]  88   4      0          4        0   100
#> [622,]  88   4      0          4        1   115
#> [623,]  85  22      0         22        1   184
#> [624,]  86   9      1          7        1   142
#> [625,]  86   6      0         46        0   173
#> [626,]  88   3      0        115        0   110
#> [627,]  88   2      0        180        1    68
#> [628,]  83   3      0          3        1   130
#> [629,]  87   8      0          8        1   157
#> [630,]  86  15      1          8        1   109
#> [631,]  89   4      0          4        1   153
#> [632,]  89   5      0        119        1   140
#> [633,]  87   1      0          1        0   170
#> [634,]  84   8      0        180        1   119
#> [635,]  85   8      0          8        1   136
#> [636,]  84   0      0        180        1   136
#> [637,]  90  14      0         14        1   100
#> [638,]  88   1      0          1        0   135
#> [639,]  86   4      0        180        1   145
#> [640,]  87   6      1          0        0   125
#> [641,]  91  10      0        145        0   135
#> [642,]  86   3      1          0        1    80
#> [643,]  88   8      0         50        1   154
#> [644,]  87   6      0        126        1   168
#> [645,]  86   9      1          7        0   130
#> [646,]  87  43      0        178        1   130
#> [647,]  87   5      0         36        1   150
#> [648,]  90   5      1          0        1   125
#> [649,]  89   3      1          1        1   160
#> [650,]  92   1      0          1        1   167
#> [651,]  91   3      0         33        1   137
#> [652,]  87   7      0         74        1   105
#> [653,]  89   2      0        168        0   118
#> [654,]  92   7      0          7        1   110
#> [655,]  89   4      0          4        1   159
#> [656,]  91   0      0          0        0     0
#> [657,]  89  14      0        180        1    84
#> [658,]  91   4      1          0        1   120
#> [659,]  90   1      0          1        1   118
#> [660,]  94   8      0          8        1   142
#> [661,]  92   4      0         76        1   149
#> [662,]  91   1      0        180        0   158
#> [663,]  90  16      0         16        1   106
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  93   4      0        180        1   135
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0 
#>  [11] 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+
#>  [21] 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 150.0  180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 161.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61] 180.0+  10.0+ 172.0+ 180.0+ 180.0+ 180.0+   2.0    1.0  180.0+   4.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0 
#>  [81]  36.0   88.0+ 180.0+   4.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+
#>  [91]   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 166.0+  99.0  180.0+
#> [101]   7.0+ 180.0+ 180.0+  13.0+ 171.0+  28.0    6.0+   1.0    9.0+ 180.0+
#> [111] 180.0+ 180.0+ 175.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+  16.0+ 180.0+ 180.0+ 134.0+ 180.0+   8.0    3.0+ 180.0+
#> [131] 180.0+ 180.0+   1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+
#> [141] 180.0+ 180.0+ 180.0+ 180.0+ 171.0+ 166.0+   5.0+ 180.0+ 147.0+   4.0+
#> [151]   9.0+   1.0  180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+
#> [161]   0.5  180.0+ 171.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+  45.0 
#> [171]  19.0    9.0+ 180.0+ 172.0+ 172.0+  24.0  180.0+ 180.0+   1.0+  15.0 
#> [181] 180.0+ 180.0+ 180.0+  77.0    8.0+ 180.0+ 180.0+ 170.0   94.0  180.0+
#> [191] 169.0    7.0+   6.0  180.0+ 180.0+ 180.0+   3.0+  30.0  180.0+  28.0 
#> [201]  13.0+   5.0   18.0    5.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+   9.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221]   1.0    1.0  180.0+ 180.0+   4.0+   3.0+ 167.0    6.0+ 180.0+ 180.0+
#> [231] 180.0+  12.0  180.0+ 180.0+  36.0  180.0+   3.0+ 180.0+  12.0  180.0+
#> [241] 180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+   3.0 
#> [251] 180.0+  11.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0 
#> [261]  15.0    5.0+  13.0  180.0+ 179.0+ 166.0+   0.5+ 180.0+   3.0+ 180.0+
#> [271] 175.0+ 180.0+   7.0+   5.0   16.0  180.0+ 180.0+ 123.0+  18.0  180.0+
#> [281]  80.0  180.0+  15.0  180.0+ 174.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [291]   3.0  175.0   10.0  180.0+ 180.0+ 180.0+   6.0  180.0+  19.0+  12.0 
#> [301]  99.0  180.0+ 180.0+ 180.0+   0.5   18.0    7.0+ 180.0+ 180.0+ 152.0+
#> [311] 180.0+ 180.0+ 180.0+ 101.0    4.0    5.0  150.0    1.0  171.0  180.0+
#> [321] 174.0+ 180.0+   0.5  180.0+ 180.0+  14.0+   7.0+   2.0    5.0+ 180.0+
#> [331]   5.0+ 180.0+ 180.0+  97.0    7.0  180.0+  18.0  172.0+ 180.0+ 180.0+
#> [341]   7.0   13.0+ 180.0+ 180.0+  51.0  180.0+   1.0   76.0  180.0+  10.0+
#> [351] 180.0+ 162.0    7.0+   9.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 152.0 
#> [361] 180.0+  76.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+
#> [371]  16.0+ 180.0+ 180.0+   6.0  180.0+   7.0+   3.0+  13.0+ 180.0+ 180.0+
#> [381] 180.0+   2.0    3.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+   8.0    3.0 
#> [391]  87.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 175.0    2.0   14.0+
#> [401] 180.0+ 180.0+ 180.0+   8.0+ 179.0+   1.0  180.0+  15.0  180.0+   1.0 
#> [411]  13.0    4.0+ 180.0+ 104.0+   1.0   57.0  180.0+ 180.0+ 180.0+ 180.0+
#> [421] 180.0+ 180.0+ 180.0+  34.0  180.0+   5.0   11.0+   7.0  180.0+ 180.0+
#> [431] 180.0+   6.0  180.0+  17.0+ 180.0+ 174.0+   4.0    7.0    0.5  180.0+
#> [441]  12.0  180.0+  46.0  180.0+   4.0    1.0  180.0+  52.0  180.0+ 180.0+
#> [451]  12.0  180.0+ 180.0+ 180.0+ 180.0+  33.0    5.0  180.0+ 180.0+ 180.0+
#> [461]   1.0   12.0  180.0+   7.0+  79.0    3.0  168.0+ 180.0+  18.0  180.0+
#> [471]  47.0  180.0+   7.0    8.0+   7.0  180.0+  32.0  180.0+ 119.0   12.0 
#> [481] 180.0+   8.0  180.0+   1.0   80.0  180.0+ 180.0+   4.0+   2.0   24.0 
#> [491]  32.0   23.0    6.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0 
#> [501]   4.0   10.0+ 180.0+   6.0    3.0+   2.0+ 180.0+   1.0    1.0   43.0 
#> [511] 180.0+ 138.0  180.0+  40.0   17.0  161.0   93.0  164.0  118.0  173.0 
#> [521] 180.0+ 180.0+ 175.0+  22.0   15.0+   5.0+ 180.0+ 171.0+ 166.0+  20.0+
#> [531]   3.0+  10.0  180.0+  85.0   10.0    6.0+   6.0    1.0  180.0+ 108.0 
#> [541] 125.0  180.0+ 180.0+   6.0    9.0+ 180.0+ 180.0+ 180.0+ 103.0  180.0+
#> [551] 177.0+ 169.0    4.0  180.0+ 180.0+ 180.0+   7.0+  20.0    8.0+ 180.0+
#> [561] 180.0+ 177.0+ 180.0+ 180.0+   2.0  167.0   62.0  180.0+   4.0    1.0 
#> [571]  38.0  180.0+  90.0  180.0+ 180.0+ 180.0+   4.0   71.0    1.0   19.0 
#> [581] 114.0  154.0  180.0+ 180.0+   4.0+ 180.0+   1.0   12.0    5.0+ 180.0+
#> [591]  77.0  180.0+   3.0   88.0  126.0    8.0  165.0  180.0+ 180.0+ 180.0+
#> [601] 180.0+ 180.0+   5.0    6.0   43.0  180.0+ 180.0+  14.0    3.0   13.0 
#> [611] 180.0+ 180.0+  92.0  180.0+  38.0    4.0  177.0    6.0+  62.0    6.0+
#> [621]   4.0+   4.0   22.0   11.0   46.0  115.0  180.0+   3.0+   8.0+ 180.0+
#> [631]   4.0  119.0    1.0+ 180.0+   8.0  180.0+  14.0    1.0+ 180.0+  25.0 
#> [641] 145.0    3.0   50.0  126.0  180.0+ 178.0+  36.0   89.0    3.0+   1.0 
#> [651]  33.0   74.0  168.0    7.0    4.0    0.5  180.0+   4.0    1.0+   8.0+
#> [661]  76.0  180.0+  16.0    8.0   26.0   53.0    0.5   69.0    2.0  180.0+
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
#>    0.849349 
```
