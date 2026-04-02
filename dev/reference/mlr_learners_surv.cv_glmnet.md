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
#> min 0.00331    44   2.791 0.1186       6
#> 1se 0.05918    13   2.895 0.1105       5
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  38  12      1          8        1   120
#>  [12,]  36   5      1          0        1   115
#>  [13,]  33   6      1          1        1   115
#>  [14,]  38  16      1         10        0   160
#>  [15,]  38  12      1         11        1    92
#>  [16,]  40  12      1          9        0   153
#>  [17,]  42   3      1          1        1   130
#>  [18,]  37   1      1          0        1   146
#>  [19,]  40   2      1          1        1   148
#>  [20,]  38   5      1          3        0   125
#>  [21,]  42   2      0          2        0   140
#>  [22,]  40   6      0        180        1   138
#>  [23,]  40  11      1         10        1   120
#>  [24,]  43   3      1          0        1   100
#>  [25,]  41   2      1          1        0   166
#>  [26,]  40   1      1          0        1   145
#>  [27,]  42   4      0        180        0   162
#>  [28,]  40   3      1          1        0   170
#>  [29,]  44   5      1          1        0   170
#>  [30,]  45   3      0        180        1   154
#>  [31,]  41  10      1          8        0   150
#>  [32,]  44   3      0        180        0   141
#>  [33,]  41  13      1          1        0   140
#>  [34,]  45   9      1          7        0   110
#>  [35,]  43   2      0        180        1   140
#>  [36,]  45   2      0        180        1   140
#>  [37,]  46   2      1          1        0   126
#>  [38,]  47   4      1          3        0   118
#>  [39,]  45   3      0        150        0   130
#>  [40,]  44   3      1          0        1   180
#>  [41,]  43  29      0        180        1   180
#>  [42,]  47   6      1          0        1   116
#>  [43,]  44   0      1          0        1    96
#>  [44,]  47   4      1          3        1   160
#>  [45,]  43   3      1          0        1   124
#>  [46,]  45   8      1          0        1   117
#>  [47,]  49   5      0         73        1   136
#>  [48,]  47   2      0        180        0   108
#>  [49,]  45   5      0        180        1   190
#>  [50,]  44   2      0        180        0   142
#>  [51,]  46  15      0        180        1   120
#>  [52,]  48   3      0        180        0   154
#>  [53,]  48  12      1         11        0   200
#>  [54,]  49   4      0        180        0   117
#>  [55,]  47  10      0         10        1   140
#>  [56,]  50   1      1          0        1   129
#>  [57,]  47   7      0        180        0   145
#>  [58,]  50   4      1          1        0   125
#>  [59,]  50   6      1          2        1   140
#>  [60,]  49   7      1          7        1   110
#>  [61,]  46   9      1          9        1   122
#>  [62,]  50   7      0        180        1   110
#>  [63,]  49   2      0          2        0   105
#>  [64,]  51   1      0          1        1   145
#>  [65,]  47   2      0        180        0   150
#>  [66,]  46   6      1          0        1   156
#>  [67,]  52   2      0        180        1   170
#>  [68,]  50   7      1          0        1    92
#>  [69,]  49   7      1          4        1    90
#>  [70,]  47   8      0        180        0   160
#>  [71,]  47   6      0        180        1   162
#>  [72,]  51   8      0        180        1   140
#>  [73,]  52   2      0        180        0   155
#>  [74,]  46   3      0        180        1   120
#>  [75,]  46   1      1          1        0   145
#>  [76,]  53   8      0         36        1   160
#>  [77,]  48  17      1         10        0   111
#>  [78,]  47   2      1          1        0   110
#>  [79,]  52   4      1          4        0   152
#>  [80,]  49  15      0        180        1   160
#>  [81,]  54  17      1         12        1   102
#>  [82,]  53   5      0         77        0   159
#>  [83,]  53   7      1          0        0   199
#>  [84,]  51   3      1          1        0   140
#>  [85,]  50   2      0          5        1   106
#>  [86,]  50  14      1         13        0   170
#>  [87,]  53   8      1          7        0   160
#>  [88,]  48   3      1          2        0   150
#>  [89,]  51  25      1          1        0   202
#>  [90,]  53   4      0          4        0   140
#>  [91,]  52  14      1          7        1   200
#>  [92,]  48  11      1         10        0   120
#>  [93,]  53   4      1          0        1   156
#>  [94,]  51  13      0         99        1   160
#>  [95,]  54   9      1          0        1   138
#>  [96,]  55   3      1          1        0   150
#>  [97,]  52   4      0        180        1   180
#>  [98,]  51  13      1         11        0   145
#>  [99,]  50   5      1          4        1   150
#> [100,]  52   4      0        180        0   183
#> [101,]  55  28      1         13        1   160
#> [102,]  50   7      1          1        0   156
#> [103,]  53   9      0          9        1    95
#> [104,]  50   7      1          0        1   127
#> [105,]  56   4      1          1        1   130
#> [106,]  55   1      0        180        0   127
#> [107,]  54   1      0        180        0   162
#> [108,]  54   7      1          0        1   100
#> [109,]  56   3      0        180        1   193
#> [110,]  56   2      0        180        0   132
#> [111,]  55   5      1          4        1   120
#> [112,]  52   8      0        180        0   119
#> [113,]  53  18      1          9        1   150
#> [114,]  55   6      0        180        0   170
#> [115,]  52  16      0         16        0   152
#> [116,]  53  15      0         15        1    90
#> [117,]  53   4      0        180        1   150
#> [118,]  55   6      0        180        1   100
#> [119,]  54  12      1          0        1   190
#> [120,]  55   2      0        134        1   140
#> [121,]  54   3      0        180        0   128
#> [122,]  54   7      1          2        0   129
#> [123,]  54   2      1          1        0   135
#> [124,]  54   2      1          1        1   176
#> [125,]  57   5      1          3        1   138
#> [126,]  56   4      1          0        1   140
#> [127,]  55  11      1          7        0   104
#> [128,]  53   3      1          0        1   200
#> [129,]  57  10      0        180        1   170
#> [130,]  58   8      0          8        1   130
#> [131,]  54   5      0        180        1   108
#> [132,]  57   0      0          0        1   150
#> [133,]  53  21      1         13        1   130
#> [134,]  57   4      0        180        1   119
#> [135,]  58   6      1          0        1    90
#> [136,]  55   9      1          2        1   147
#> [137,]  55  13      0        166        1   140
#> [138,]  56   5      0          5        1   150
#> [139,]  54  23      1          8        0   120
#> [140,]  57   4      1          2        1   185
#> [141,]  53   4      0        147        1   145
#> [142,]  55   3      1          2        0   140
#> [143,]  54   7      1          0        1   141
#> [144,]  56   4      0          4        0   164
#> [145,]  59  15      1         10        0   140
#> [146,]  58   9      1          0        1   180
#> [147,]  58   1      1          1        1   200
#> [148,]  55   5      1          0        0   140
#> [149,]  56   7      1          5        1   120
#> [150,]  57   1      0        180        0   148
#> [151,]  60  11      1          9        0   106
#> [152,]  59   3      0        180        0   120
#> [153,]  58   4      1          0        1   160
#> [154,]  60   5      1          1        0   138
#> [155,]  57   5      0        180        1   130
#> [156,]  58  11      1          9        1   124
#> [157,]  55   5      1          0        1   160
#> [158,]  59   5      0        180        1   155
#> [159,]  58   4      1          3        0   120
#> [160,]  60   0      1          0        1    80
#> [161,]  59   2      1          1        0   140
#> [162,]  58   8      0        161        1   140
#> [163,]  58  14      1          6        0   190
#> [164,]  61   3      1          2        1   102
#> [165,]  58   1      0          1        1   100
#> [166,]  57  13      1         10        0   110
#> [167,]  58  10      0         10        1   150
#> [168,]  57   4      1          3        0   138
#> [169,]  57  11      0        180        1   150
#> [170,]  61   3      0         17        0   143
#> [171,]  57   3      1          2        0   120
#> [172,]  58  19      1         13        1   140
#> [173,]  56  18      1         11        1   165
#> [174,]  59   9      1          0        1    80
#> [175,]  55   4      1          3        1   160
#> [176,]  58  11      0        172        1   135
#> [177,]  55   9      1          7        1   135
#> [178,]  61   4      1          0        1   115
#> [179,]  56   8      1          8        0   120
#> [180,]  61  13      1         12        1   130
#> [181,]  57  15      1         13        1   110
#> [182,]  59   5      1          2        0   182
#> [183,]  58   5      1          1        1   135
#> [184,]  61   8      0         77        0   120
#> [185,]  62  10      1          0        1   153
#> [186,]  57   3      1          0        0   100
#> [187,]  61  18      0        170        0   140
#> [188,]  61  28      1          7        0   133
#> [189,]  58   8      1          3        1   150
#> [190,]  61   7      0          7        1   150
#> [191,]  60   7      0          7        0   147
#> [192,]  59  13      1          2        0   198
#> [193,]  57  12      1          9        1   120
#> [194,]  62   4      1          0        0   160
#> [195,]  62   4      1          3        0   173
#> [196,]  59   1      0        180        0   155
#> [197,]  59  16      1          9        1   133
#> [198,]  61  13      0         13        0   120
#> [199,]  57  18      1          9        1    93
#> [200,]  58  11      1          9        0   179
#> [201,]  62  17      1         10        1   180
#> [202,]  58   7      0        180        1   150
#> [203,]  63   3      1          1        0   180
#> [204,]  63   1      0        180        1   130
#> [205,]  62   3      0        180        1   105
#> [206,]  63   4      0        180        1   190
#> [207,]  63  15      1         10        1   126
#> [208,]  64   4      0        180        0   130
#> [209,]  63   4      1          1        0   155
#> [210,]  60  18      1         13        0   132
#> [211,]  59   8      0        180        1   140
#> [212,]  61   9      1          9        1   150
#> [213,]  58   9      1          9        0   110
#> [214,]  62   7      0          7        0   150
#> [215,]  58   2      0        180        0   127
#> [216,]  59   4      0        180        0   196
#> [217,]  60   7      1          5        1   141
#> [218,]  60   7      0          7        0   140
#> [219,]  60   7      1          1        1    90
#> [220,]  65  13      0        180        1   100
#> [221,]  63   1      0          1        0   162
#> [222,]  62   6      0        180        0   170
#> [223,]  61  15      1         13        0   170
#> [224,]  59   4      0          4        0   149
#> [225,]  64  10      1          9        0   160
#> [226,]  62   6      0          6        0   120
#> [227,]  63  12      1         10        0   200
#> [228,]  59  10      0        180        1   130
#> [229,]  60   8      0         17        1   130
#> [230,]  61   6      1          1        1   117
#> [231,]  64  12      1         11        0   160
#> [232,]  64   6      1          0        1   140
#> [233,]  63  10      1          0        1   148
#> [234,]  63  14      1          9        0   123
#> [235,]  65  36      1         11        0   140
#> [236,]  66   3      1          1        0   127
#> [237,]  61  10      1          2        1   194
#> [238,]  66   5      1          0        1   110
#> [239,]  65   8      1          0        0   168
#> [240,]  65  10      1          8        1   120
#> [241,]  64   0      0          0        1    90
#> [242,]  60   6      0        180        0   130
#> [243,]  64  21      1         10        0   190
#> [244,]  61  12      1         11        0   154
#> [245,]  64   9      0        180        0   150
#> [246,]  65   3      0        180        1   190
#> [247,]  63  16      1          7        1   110
#> [248,]  66   6      1          1        1   130
#> [249,]  63  12      0         12        1   150
#> [250,]  65   3      1          0        1    80
#> [251,]  63   5      1          4        0   170
#> [252,]  64   2      0          2        0   201
#> [253,]  66  18      1          5        0   142
#> [254,]  66  16      1         11        1   169
#> [255,]  62   9      0        180        0   145
#> [256,]  61  15      1         10        0   130
#> [257,]  63   9      1          8        1   160
#> [258,]  63   2      1          0        0   140
#> [259,]  64  19      1          8        1   160
#> [260,]  67   6      0        180        1   170
#> [261,]  64  13      1         12        1   150
#> [262,]  66   7      1          0        1   115
#> [263,]  66  13      1          0        0   118
#> [264,]  64  14      1         13        1   150
#> [265,]  67   4      1          3        0   130
#> [266,]  66   3      1          0        1   135
#> [267,]  66   6      1          0        1   140
#> [268,]  65   2      1          1        1   170
#> [269,]  68   1      0        180        1   166
#> [270,]  63   7      1          0        0   162
#> [271,]  67   8      1          1        1   130
#> [272,]  68   5      0          5        1    90
#> [273,]  63  10      0         16        1   160
#> [274,]  64   1      0          1        1   120
#> [275,]  68  18      0        180        1   260
#> [276,]  63   8      1          1        1   162
#> [277,]  65  18      1          3        0   120
#> [278,]  63   1      1          0        1   155
#> [279,]  63  10      0         18        1   130
#> [280,]  67  11      0         11        0   150
#> [281,]  68  11      0        180        0   160
#> [282,]  66  11      1          0        0   100
#> [283,]  65   4      1          2        1   145
#> [284,]  69  12      0         15        1   140
#> [285,]  66  15      1         13        1   160
#> [286,]  65  11      1          6        0   130
#> [287,]  66   9      1          8        0   130
#> [288,]  63   8      0        180        1   120
#> [289,]  68  14      1         13        1   140
#> [290,]  65   8      1          0        1    90
#> [291,]  66   3      0          3        1   138
#> [292,]  69   1      1          0        0   170
#> [293,]  68  10      1         10        1   150
#> [294,]  65   1      1          0        0   133
#> [295,]  67   7      1          4        1   130
#> [296,]  67   2      0        180        0   184
#> [297,]  65   6      0          6        0    80
#> [298,]  65  10      1          1        1   148
#> [299,]  66  19      1         12        1   150
#> [300,]  69   6      0         99        1   140
#> [301,]  64   4      0        179        0   160
#> [302,]  66   4      0        180        1   130
#> [303,]  64  11      0         11        0   125
#> [304,]  67   2      0         18        0   131
#> [305,]  66   7      1          5        1   131
#> [306,]  66   4      0        180        0   177
#> [307,]  68   4      1          0        1   160
#> [308,]  69   4      1          3        1   150
#> [309,]  65  13      1         12        1   130
#> [310,]  69  17      1         10        0   140
#> [311,]  69   8      0         93        0   140
#> [312,]  66   6      0        180        0   140
#> [313,]  65   1      0          1        1   120
#> [314,]  68   4      0          4        1   190
#> [315,]  71   3      0          5        0   112
#> [316,]  70   7      1          0        1   190
#> [317,]  71  20      1          0        1   160
#> [318,]  67   2      0        180        0   128
#> [319,]  66   9      1          3        1   151
#> [320,]  70   4      1          0        1   180
#> [321,]  70  14      0        171        0   166
#> [322,]  67   6      1          4        0   130
#> [323,]  68  18      1         14        1   170
#> [324,]  69   0      0          0        1   148
#> [325,]  67  14      1         13        0   130
#> [326,]  65  14      1         13        1   150
#> [327,]  71   7      0          7        0   230
#> [328,]  66   2      0          2        1   228
#> [329,]  71   6      0         45        1   158
#> [330,]  69   5      0          5        1   142
#> [331,]  69   3      0          3        1   130
#> [332,]  70  22      1         13        0   103
#> [333,]  67   1      0         36        1   104
#> [334,]  69   8      1          5        1   195
#> [335,]  69   6      1          4        1   174
#> [336,]  72   3      1          0        1   132
#> [337,]  72   7      0          7        1   110
#> [338,]  68  18      0         18        1   100
#> [339,]  67  14      0        172        1   140
#> [340,]  69  11      1          0        1   120
#> [341,]  66   2      0        180        0   130
#> [342,]  69   4      1          3        0   132
#> [343,]  69   8      1          2        0   121
#> [344,]  67  13      1          9        0   130
#> [345,]  70   3      0        123        0   130
#> [346,]  70   9      0        180        1   142
#> [347,]  67  22      1          1        1   140
#> [348,]  68   3      0         19        0   135
#> [349,]  69   1      0          1        1   110
#> [350,]  67   4      0         60        1   136
#> [351,]  69   5      0         76        0   120
#> [352,]  66  24      1         13        0   130
#> [353,]  70  35      1          0        1   105
#> [354,]  72  30      1          0        1   145
#> [355,]  68   7      1          2        0   135
#> [356,]  73  20      1          0        1   170
#> [357,]  71   6      0          9        0   120
#> [358,]  70  11      0        180        1   210
#> [359,]  72  19      1          8        0   120
#> [360,]  72  12      1         10        0   170
#> [361,]  67   8      0        180        1   170
#> [362,]  67   9      0        180        0   158
#> [363,]  70   5      0        180        0   150
#> [364,]  72   2      0          2        1   100
#> [365,]  72   6      1          5        0   115
#> [366,]  71   1      0        173        1   188
#> [367,]  68  23      0        180        1   220
#> [368,]  70   3      0        180        0   121
#> [369,]  69   3      0        180        0   220
#> [370,]  71   3      1          2        0   150
#> [371,]  68   4      1          3        0   210
#> [372,]  72   5      0         28        0   120
#> [373,]  71   5      0        180        0   191
#> [374,]  73   6      0        180        1   117
#> [375,]  69  16      1         10        1   140
#> [376,]  69   8      1          1        0   164
#> [377,]  72  16      1          1        1   130
#> [378,]  70   4      0        180        0   180
#> [379,]  73   6      1          0        1   270
#> [380,]  68  15      1         13        1   130
#> [381,]  70   3      0          3        1   159
#> [382,]  70  13      1          9        0   100
#> [383,]  72   6      0        180        1   130
#> [384,]  73   0      0        180        1   161
#> [385,]  74   8      1          0        1    85
#> [386,]  73   4      0        180        1   154
#> [387,]  69   2      1          0        1   110
#> [388,]  71   3      1          1        0   150
#> [389,]  71  15      1         11        0   165
#> [390,]  74  20      0         20        1   180
#> [391,]  68   9      0        180        1   120
#> [392,]  71  20      1         10        0   140
#> [393,]  74   0      1          0        1    90
#> [394,]  73   3      1          0        1   136
#> [395,]  70   5      1          0        1   190
#> [396,]  71  17      1         11        0   160
#> [397,]  71   3      1          2        1   190
#> [398,]  73  10      1          8        0   106
#> [399,]  69  12      1          1        1   149
#> [400,]  74   4      0          4        0   120
#> [401,]  72   5      1          3        1   160
#> [402,]  70   3      0        180        1   154
#> [403,]  73   6      0        180        0   110
#> [404,]  72  15      1          0        1   150
#> [405,]  71   7      1          2        0   143
#> [406,]  74   3      0          3        1   150
#> [407,]  73  17      1         11        0   140
#> [408,]  71  13      1          8        0   121
#> [409,]  69   7      0        180        1   144
#> [410,]  70   8      0          8        0   120
#> [411,]  71  10      1          9        1   120
#> [412,]  75   2      1          1        0   145
#> [413,]  73  10      1          9        1   146
#> [414,]  72  10      1          9        1   160
#> [415,]  73  10      1         10        1   120
#> [416,]  71   2      0         10        1   112
#> [417,]  73   1      0          1        1    80
#> [418,]  75   9      1          7        0   140
#> [419,]  75  13      1          1        1   130
#> [420,]  71   4      0          4        0   134
#> [421,]  73  10      1          8        0   120
#> [422,]  72   1      1          1        0   168
#> [423,]  72   7      0         57        1   145
#> [424,]  73  10      0        180        0   162
#> [425,]  72  11      0         11        1   140
#> [426,]  76  25      1         12        1   170
#> [427,]  73  12      1         12        1   140
#> [428,]  72   2      0        180        0   120
#> [429,]  75   1      0        180        1   140
#> [430,]  72   4      1          0        1   197
#> [431,]  73   5      0        180        0   126
#> [432,]  73   4      0        180        0   124
#> [433,]  76   3      1          0        1   120
#> [434,]  71  32      1         12        1   107
#> [435,]  72   5      0        180        0   154
#> [436,]  72   3      0        180        0   160
#> [437,]  76   5      0          5        1   130
#> [438,]  77  11      0         11        1   150
#> [439,]  77   4      0          4        0   185
#> [440,]  72   7      1          2        0   142
#> [441,]  73  15      0         15        1   160
#> [442,]  71  16      0        180        0   140
#> [443,]  74   7      0        180        1   150
#> [444,]  74   3      0          3        1   128
#> [445,]  74   2      1          1        0   140
#> [446,]  76   8      1          0        1   141
#> [447,]  74  19      1          4        1   200
#> [448,]  73   6      0          6        1   114
#> [449,]  74   2      0        180        0   190
#> [450,]  72   4      0         85        1   120
#> [451,]  72   4      1          3        0   160
#> [452,]  73   4      1          3        1   125
#> [453,]  76  13      1         10        0   110
#> [454,]  75   4      1          0        1   122
#> [455,]  75   0      0          0        1   130
#> [456,]  73  13      1         11        0   195
#> [457,]  74   8      1          0        1   105
#> [458,]  75   4      1          2        1   188
#> [459,]  74   6      0        180        0   160
#> [460,]  76   4      0          4        1   155
#> [461,]  75   1      0          1        1   125
#> [462,]  74   2      0        180        0   111
#> [463,]  73   1      0         52        1   105
#> [464,]  73   0      0        180        0   156
#> [465,]  78  12      1         11        1   160
#> [466,]  76   5      1          0        1   167
#> [467,]  74   8      1          8        1   170
#> [468,]  73  33      1         12        1   175
#> [469,]  77   5      1          0        0   123
#> [470,]  77  12      1          9        1   100
#> [471,]  73  10      1          9        0   146
#> [472,]  77   1      1          0        1    90
#> [473,]  76  12      1         11        1   120
#> [474,]  78   5      1          0        1   170
#> [475,]  73   7      1          0        0   174
#> [476,]  74   6      0         79        1   140
#> [477,]  74   9      1          8        0   200
#> [478,]  74   2      1          0        1   130
#> [479,]  78  18      0         18        1   144
#> [480,]  76  29      0         47        0    90
#> [481,]  73   8      1          1        1   162
#> [482,]  73  11      1          2        1   110
#> [483,]  74   2      0        180        0   100
#> [484,]  78   7      0          7        1   133
#> [485,]  74  15      0        180        1   172
#> [486,]  78   8      1          6        1   110
#> [487,]  76  13      1          1        1   170
#> [488,]  79   6      0        180        0   170
#> [489,]  80  10      1          6        1   147
#> [490,]  78  13      1          5        0   130
#> [491,]  75   5      0        119        1   150
#> [492,]  75  12      1          1        1   120
#> [493,]  78  15      0        180        1   270
#> [494,]  75  13      1          6        0   150
#> [495,]  74  10      1          8        0   135
#> [496,]  76   1      0          1        1    83
#> [497,]  79   4      0         80        0   145
#> [498,]  75   4      1          0        0   212
#> [499,]  76  11      1          0        0   120
#> [500,]  75  11      1          4        0   162
#> [501,]  76   7      0         29        1   150
#> [502,]  77  24      0         24        1   160
#> [503,]  76   3      1          0        1   140
#> [504,]  78  11      1          1        1   140
#> [505,]  79  11      0        180        0   160
#> [506,]  78  14      1          0        1   140
#> [507,]  81   1      0          1        0   130
#> [508,]  78  11      1          8        1   118
#> [509,]  76   4      0          4        1   160
#> [510,]  76  10      1          8        0   180
#> [511,]  76  12      1         10        1   127
#> [512,]  77   6      0          6        1   107
#> [513,]  80   3      1          0        1   120
#> [514,]  75   2      1          1        1   204
#> [515,]  78  11      0        180        1   135
#> [516,]  76   1      0          1        1    90
#> [517,]  78   7      1          0        1   110
#> [518,]  79   3      0          3        0   120
#> [519,]  77   7      0        180        1   170
#> [520,]  77   6      0          6        1   144
#> [521,]  79   4      1          0        1   120
#> [522,]  81   1      0        180        0   120
#> [523,]  77   9      1          4        0   141
#> [524,]  82   5      0          8        1   120
#> [525,]  80  40      1          0        1   138
#> [526,]  78   4      0         59        1   112
#> [527,]  80  17      1         12        0   100
#> [528,]  76   7      0        161        0   151
#> [529,]  79  10      0         10        1   120
#> [530,]  80  15      1          0        1    90
#> [531,]  79  28      0        164        0   100
#> [532,]  80   9      0        118        1   186
#> [533,]  78  32      0        180        1   130
#> [534,]  79   1      0         37        1   140
#> [535,]  78   7      0          7        1   147
#> [536,]  77  13      1          0        1   190
#> [537,]  80   5      1          1        1   108
#> [538,]  79   3      0          3        1   101
#> [539,]  78  26      1          5        0   194
#> [540,]  76   1      0        166        0   131
#> [541,]  81   4      1          1        1   104
#> [542,]  80   1      0          1        0   100
#> [543,]  78   3      1          1        1   152
#> [544,]  77  10      1          8        1   130
#> [545,]  82   3      1          1        1   144
#> [546,]  80   6      1          0        1   119
#> [547,]  79  10      0        180        1   150
#> [548,]  77   4      0        180        1    98
#> [549,]  81   1      0        108        0   129
#> [550,]  78  12      0        180        0   134
#> [551,]  79   1      0        125        0   193
#> [552,]  82  21      1          2        0   155
#> [553,]  84  22      1         10        0   180
#> [554,]  79   4      0          4        1   121
#> [555,]  80   6      0          6        1   110
#> [556,]  82   5      0        180        0   110
#> [557,]  83   5      0        180        0   148
#> [558,]  79   7      1          6        0   130
#> [559,]  81  11      1          8        0   160
#> [560,]  80  11      1          8        0   170
#> [561,]  79   4      0          4        1   183
#> [562,]  78   9      1          4        1   120
#> [563,]  79   1      0        180        1   170
#> [564,]  81  15      0        180        1   140
#> [565,]  84   5      1          1        1    85
#> [566,]  81  20      1          9        0   170
#> [567,]  83   8      0          8        0   115
#> [568,]  81  16      0         16        1   110
#> [569,]  80   6      1          0        1   150
#> [570,]  80  11      1          8        0   110
#> [571,]  80   8      1          7        0   160
#> [572,]  79   7      0        177        0   197
#> [573,]  81   2      1          1        0   198
#> [574,]  83   2      0          2        1   155
#> [575,]  82   6      0        128        1   100
#> [576,]  82  23      1          0        0   110
#> [577,]  84   5      0        180        1   203
#> [578,]  84   4      0          4        1    85
#> [579,]  84   1      0         38        1   205
#> [580,]  81   4      0         90        1   138
#> [581,]  79   9      1          8        0   150
#> [582,]  80  13      1          8        1   140
#> [583,]  80   2      1          0        1   130
#> [584,]  79   4      0          4        1    60
#> [585,]  80   6      0         71        1   189
#> [586,]  83   1      0          1        1   100
#> [587,]  82  19      0         19        0   120
#> [588,]  79  14      1          0        0   110
#> [589,]  83   3      0        114        0    98
#> [590,]  85   9      1          6        1   160
#> [591,]  83   1      0        180        0   160
#> [592,]  84  15      1         13        1   110
#> [593,]  81   1      0          1        1   145
#> [594,]  82   5      1          0        1   146
#> [595,]  86  12      0        180        1   120
#> [596,]  83  12      1          2        1   170
#> [597,]  82   3      1          2        0   130
#> [598,]  83   7      0        126        0   135
#> [599,]  84   6      0        165        0   145
#> [600,]  82   9      0        180        1   134
#> [601,]  84   3      0        180        1   120
#> [602,]  85   3      0          3        1   118
#> [603,]  83   9      0        180        1   149
#> [604,]  82   1      0        180        1   193
#> [605,]  83   4      0          4        0   130
#> [606,]  87   2      0          5        1   137
#> [607,]  86  12      1          0        1   132
#> [608,]  82  14      1         11        1   103
#> [609,]  86   6      1          0        1   140
#> [610,]  84  16      0         70        1   150
#> [611,]  83  19      0         43        0   150
#> [612,]  83  10      1          0        1   190
#> [613,]  86   2      0        180        1   169
#> [614,]  88  14      1          3        1   130
#> [615,]  84   3      0          3        1   121
#> [616,]  83  13      1         12        0   170
#> [617,]  84   7      1          2        0   148
#> [618,]  87   2      0        180        0   113
#> [619,]  84   3      0        180        1   170
#> [620,]  86  13      0        177        0   163
#> [621,]  86   6      0          6        1   117
#> [622,]  86   6      1          1        0   112
#> [623,]  88   4      0          4        0   100
#> [624,]  87   2      0        180        1   130
#> [625,]  88   2      0        180        1    68
#> [626,]  83   3      0          3        1   130
#> [627,]  89   4      0          4        1   153
#> [628,]  87   6      0        180        1   110
#> [629,]  84   8      0        180        1   119
#> [630,]  85   8      0          8        1   136
#> [631,]  87  29      0         29        1    97
#> [632,]  84   0      0        180        1   136
#> [633,]  89  10      0         46        1   170
#> [634,]  88   1      0          1        0   135
#> [635,]  87   2      0        180        0   160
#> [636,]  91  10      0        145        0   135
#> [637,]  86   3      1          0        1    80
#> [638,]  88   7      0         24        0   119
#> [639,]  87   6      0        126        1   168
#> [640,]  86  10      0        180        1   137
#> [641,]  86   9      1          7        0   130
#> [642,]  90   4      1          0        0   121
#> [643,]  91   1      0          1        1    74
#> [644,]  87  43      0        178        1   130
#> [645,]  87   5      0         36        1   150
#> [646,]  90   5      1          0        1   125
#> [647,]  88   3      1          2        0   159
#> [648,]  89   3      1          1        1   160
#> [649,]  92   1      0          1        1   167
#> [650,]  89  12      1          0        1   130
#> [651,]  89   2      0        168        0   118
#> [652,]  89  52      0         52        1   130
#> [653,]  92   7      0          7        1   110
#> [654,]  89   4      0          4        1   159
#> [655,]  89  14      0        180        1    84
#> [656,]  90  18      0        180        0   188
#> [657,]  91   4      1          0        1   120
#> [658,]  90  19      1         11        1   129
#> [659,]  90   1      0          1        1   118
#> [660,]  93   8      0        179        1   110
#> [661,]  94   8      0          8        1   142
#> [662,]  91   1      0        180        0   158
#> [663,]  90  16      0         16        1   106
#> [664,]  96   3      0         12        1    97
#> [665,]  95   8      1          5        1   150
#> [666,]  91  12      0         53        1   212
#> [667,]  92   5      0         69        0   139
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+ 180.0+   5.0+ 180.0+ 180.0+ 115.0  180.0+ 180.0+
#>  [11]  12.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+   5.0+
#>  [21]   2.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 155.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+
#>  [41] 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0  180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+ 180.0+   7.0 
#>  [61] 180.0+ 180.0+   2.0    1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0   88.0+ 180.0+   4.0+ 180.0+
#>  [81] 180.0+  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+   4.0+
#>  [91]  85.0  180.0+ 166.0+  99.0  180.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+
#> [101]  28.0  180.0+   9.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+
#> [111] 180.0+ 180.0+ 180.0+ 180.0+  16.0+  15.0+ 180.0+ 180.0+  12.0+ 134.0+
#> [121] 180.0+ 180.0+ 180.0+ 180.0+ 140.0  165.0  180.0+ 180.0+ 180.0+   8.0+
#> [131] 180.0+   0.5  180.0+ 180.0+ 180.0+  15.0  166.0+   5.0+ 180.0+   4.0+
#> [141] 147.0+ 180.0+ 180.0+   4.0+ 180.0+   9.0+   1.0  180.0+ 180.0+ 180.0+
#> [151] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5 
#> [161] 180.0+ 161.0+ 171.0+   3.0    1.0  180.0+  10.0+ 180.0+ 180.0+  17.0 
#> [171]   3.0+  19.0  180.0+   9.0+ 180.0+ 172.0+  24.0  180.0+   8.0  180.0+
#> [181]  15.0  180.0+ 180.0+  77.0  180.0+ 180.0+ 170.0   94.0  180.0+   7.0 
#> [191]   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  13.0+  18.0  180.0+
#> [201] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [211] 180.0+ 180.0+   9.0    7.0+ 180.0+ 180.0+  84.0    7.0+ 180.0+ 180.0+
#> [221]   1.0  180.0+ 180.0+   4.0+ 167.0    6.0+ 180.0+ 180.0+  17.0  180.0+
#> [231]  12.0  180.0+ 180.0+  14.0+  36.0    3.0+  88.0  180.0+ 180.0+ 180.0+
#> [241]   0.5  180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0    3.0 
#> [251] 180.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 103.0  180.0+
#> [261]  13.0  179.0+ 166.0+  14.0+ 180.0+   3.0+ 180.0+ 175.0+ 180.0+   7.0+
#> [271]   8.0    5.0   16.0    1.0  180.0+ 180.0+ 123.0+   1.0+  18.0   11.0+
#> [281] 180.0+ 180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [291]   3.0  175.0   10.0  180.0+ 180.0+ 180.0+   6.0  180.0+  19.0+  99.0 
#> [301] 179.0+ 180.0+  11.0+  18.0    7.0+ 180.0+ 180.0+ 152.0+ 180.0+ 180.0+
#> [311]  93.0  180.0+   1.0    4.0    5.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [321] 171.0    6.0  180.0+   0.5  180.0+  14.0+   7.0+   2.0   45.0    5.0+
#> [331]   3.0+ 180.0+  36.0  180.0+  97.0  180.0+   7.0   18.0  172.0+ 180.0+
#> [341] 180.0+ 180.0+   8.0+  13.0+ 123.0  180.0+  51.0   19.0    1.0   60.0 
#> [351]  76.0  180.0+ 180.0+ 162.0    7.0+ 124.0    9.0  180.0+ 180.0+  12.0 
#> [361] 180.0+ 180.0+ 180.0+   2.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [371] 180.0+  28.0  180.0+ 180.0+  16.0+ 180.0+  16.0+ 180.0+   6.0   15.0 
#> [381]   3.0+  13.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0 
#> [391] 180.0+  20.0    0.5  180.0+ 180.0+ 180.0+   3.0   87.0   12.0    4.0+
#> [401] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0  180.0+   8.0+
#> [411] 179.0+ 180.0+ 180.0+ 159.0   15.0   10.0    1.0  180.0+  13.0    4.0+
#> [421]  10.0    1.0   57.0  180.0+  11.0  180.0+  12.0  180.0+ 180.0+ 180.0+
#> [431] 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+   5.0   11.0+   4.0+   7.0 
#> [441]  15.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+   6.0  180.0+  85.0 
#> [451] 180.0+ 180.0+ 174.0+   4.0    0.5  180.0+ 180.0+  46.0  180.0+   4.0 
#> [461]   1.0  180.0+  52.0  180.0+  12.0  180.0+   8.0   33.0    5.0  180.0+
#> [471] 180.0+   1.0   12.0  180.0+   7.0+  79.0  168.0+ 176.0+  18.0   47.0 
#> [481] 180.0+  11.0  180.0+   7.0  180.0+   8.0+ 180.0+ 180.0+  10.0  172.0 
#> [491] 119.0   12.0  180.0+ 180.0+ 180.0+   1.0   80.0    4.0+  11.0  152.0+
#> [501]  29.0   24.0    3.0+ 180.0+ 180.0+ 180.0+   1.0   11.0    4.0   10.0+
#> [511] 180.0+   6.0    3.0+   2.0+ 180.0+   1.0   43.0    3.0  180.0+   6.0 
#> [521] 138.0  180.0+  71.0    8.0   40.0   59.0   17.0  161.0   10.0+ 180.0+
#> [531] 164.0  118.0  180.0+  37.0    7.0+  22.0    5.0+   3.0  171.0+ 166.0+
#> [541]  71.0    1.0    3.0+  10.0  180.0+   6.0  180.0+ 180.0+ 108.0  180.0+
#> [551] 125.0  180.0+ 180.0+   4.0    6.0  180.0+ 180.0+ 180.0+ 180.0+ 169.0 
#> [561]   4.0  180.0+ 180.0+ 180.0+ 180.0+  20.0    8.0+  16.0  180.0+ 180.0+
#> [571] 180.0+ 177.0+ 180.0+   2.0  128.0   62.0  180.0+   4.0   38.0   90.0 
#> [581] 180.0+ 180.0+ 180.0+   4.0   71.0    1.0   19.0  180.0+ 114.0  180.0+
#> [591] 180.0+ 180.0+   1.0    5.0+ 180.0+  77.0    3.0  126.0  165.0  180.0+
#> [601] 180.0+   3.0+ 180.0+ 180.0+   4.0+   5.0  180.0+ 174.0    6.0   70.0 
#> [611]  43.0  180.0+ 180.0+  14.0    3.0   13.0  180.0+ 180.0+ 180.0+ 177.0 
#> [621]   6.0+   6.0+   4.0+ 180.0+ 180.0+   3.0+   4.0  180.0+ 180.0+   8.0 
#> [631]  29.0  180.0+  46.0    1.0+ 180.0+ 145.0    3.0   24.0  126.0  180.0+
#> [641] 180.0+   4.0    1.0  178.0+  36.0   89.0   75.0    3.0+   1.0  180.0+
#> [651] 168.0   52.0    7.0    4.0  180.0+ 180.0+   4.0  180.0+   1.0+ 179.0+
#> [661]   8.0+ 180.0+  16.0   12.0    8.0   53.0   69.0  180.0+   3.0   15.0+
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
#>    0.843796 
```
